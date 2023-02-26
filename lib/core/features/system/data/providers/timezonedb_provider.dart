import '../../domain/entities/coordinate.dart';
import '../models/online_time_model.dart';
import 'online_time_provider_intf.dart';

class TimezoneDbProvider implements OnlineTimeProviderIntf {
  const TimezoneDbProvider();

  @override
  Future<OnlineTimeModel> getOnlineTimeUseCase({
    timeZone = 'Asia/Manila',
    String? ipAddress,
    Coordinate? coordinate,
  }) {
    // TODO: implement getOnlineTimeUseCase

    // http://api.timezonedb.com/v2.1/get-time-zone?key=EJM63WZSZ6E6&format=json&by=zone&zone=America/Chicago

    throw UnimplementedError();
  }
}
