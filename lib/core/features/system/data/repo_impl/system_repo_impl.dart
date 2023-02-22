import '../../domain/entities/coordinate.dart';
import '../../domain/repo_intf/system_repo_intf.dart';

class SystemRepoImpl implements SystemRepoIntf {
  @override
  FutureOnlineTimeEntity getOnlineTimeUseCase({
    timeZone = 'Asia/Manila',
    String? ipAddress,
    Coordinate? coordinate,
  }) {
    // TODO: implement getOnlineTimeUseCase
    throw UnimplementedError();
  }
}
