import '../../../../../constants/enums/online_time_source_enum.dart';
import '../../domain/entities/online_time_entity.dart';

class OnlineTimeModel extends OnlineTimeEntity {
  // TODO: Add test for this class.

  const OnlineTimeModel._({
    required super.dateTime,
    required super.onlineTimeSource,
  });

  // TODO: Implement proper types assignment.
  factory OnlineTimeModel.fromJsonMap(Map<String, dynamic> jsonMap) {
    return OnlineTimeModel._(
      dateTime: jsonMap['dateTime'],
      onlineTimeSource: jsonMap['onlineTimeSource'],
    );
  }

  // TODO: Implement proper types assignment.
  Map<String, dynamic> toJsonMap() {
    return {
      'dateTime': dateTime,
      'onlineTimeSource': onlineTimeSource,
    };
  }

  factory OnlineTimeModel.fromCustomInput({
    required DateTime dateTime,
    required OnlineTimeSourceEnum onlineTimeSource,
  }) {
    return OnlineTimeModel._(
      dateTime: dateTime,
      onlineTimeSource: onlineTimeSource,
    );
  }
}
