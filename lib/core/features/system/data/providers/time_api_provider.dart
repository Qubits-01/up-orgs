import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:up_orgs/constants/enums/online_time_source_enum.dart';
import 'package:up_orgs/core/exceptions/online_time_exception.dart';

import '../../domain/entities/coordinate.dart';
import '../models/online_time_model.dart';
import 'online_time_provider_intf.dart';

class TimeApiProvider extends OnlineTimeProviderIntf {
  // TODO: Add test on this class.

  const TimeApiProvider();

  /// Get online time using TimeAPI.
  /// Ref: https://www.timeapi.io/
  ///
  /// This method will prioritize using the time zone endpoint first (i.e., both [ipAddress] and
  /// [coordinate] parameters are null). The next priority will be the ip address endpoint, and then
  /// the coordinate endpoint. This is to avoid conflicting [basePath] values.
  ///
  /// For instance, the programmer might use 'Asia/Manila' as the [timeZone] value, and then use a
  /// North American [ipAddress]. This will result in a conflicting [basePath] value.
  /// Hence, the priority is to use the time zone endpoint first, then the ip address,
  /// and lastly the coordinate endpoint.
  @override
  Future<OnlineTimeModel> getOnlineTimeUseCase({
    timeZone = 'Asia/Manila',
    String? ipAddress,
    Coordinate? coordinate,
  }) async {
    final dio = Dio();
    late final Response response;
    late final OnlineTimeModel onlineTimeModel;
    late final String basePath;
    late final _EndPointTypeEnum endPointType;
    late final Map<String, dynamic> queryParameters;

    // Decide what TimeAPI endpoint to use (i.e., is it using the time zone,
    // ip address, or coordinate?).
    if (ipAddress == null && coordinate == null) {
      basePath = 'https://www.timeapi.io/api/Time/current/zone';
      endPointType = _EndPointTypeEnum.timeZone;
    } else if (ipAddress != null) {
      basePath = 'https://www.timeapi.io/api/Time/current/ip';
      endPointType = _EndPointTypeEnum.ipAddress;
    } else if (coordinate != null) {
      basePath = 'https://www.timeapi.io/api/Time/current/coordinate';
      endPointType = _EndPointTypeEnum.coordinate;
    }

    try {
      // Build/determine the appropriate queryParameters for the TimeAPI endpoint.
      switch (endPointType) {
        case _EndPointTypeEnum.timeZone:
          queryParameters = {timeZone: timeZone};
          break;

        case _EndPointTypeEnum.ipAddress:
          queryParameters = {'ip': ipAddress};
          break;

        case _EndPointTypeEnum.coordinate:
          queryParameters = {
            'latitude': coordinate?.latitude,
            'longitude': coordinate?.longitude,
          };
          break;

        // Don't put a default case here. This is to have a
        // compile-time error if a new enum value is added
        // (for code maintainability).
      }

      response = await dio.get(basePath, queryParameters: queryParameters);
    } catch (e, stackTrace) {
      throw OnlineTimeException(
        title: 'TimeAPI Exception',
        message: e.toString(),
        stackTrace: stackTrace,
        onlineTimeSource: OnlineTimeSourceEnum.timeApi,
      );
    }

    onlineTimeModel = OnlineTimeModel.fromJsonMap(json.decode(response.data));

    return onlineTimeModel;
  }
}

/// Private enum for TimeAPI endpoint type.
enum _EndPointTypeEnum { timeZone, ipAddress, coordinate }
