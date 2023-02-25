import '../../domain/entities/coordinate.dart';
import '../models/online_time_model.dart';

abstract class OnlineTimeProviderIntf {
  // TODO: Add test on this abstract class.

  const OnlineTimeProviderIntf();

  Future<OnlineTimeModel> getOnlineTimeUseCase({
    timeZone = 'Asia/Manila',
    String? ipAddress,
    Coordinate? coordinate,
  });
}
