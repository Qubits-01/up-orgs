import '../../../../interfaces/params_intf.dart';
import '../../../../interfaces/use_case_intf.dart';
import '../../domain/entities/coordinate.dart';
import '../../domain/entities/online_time_entity.dart';
import '../../domain/repo_intf/system_repo_intf.dart';

class GetOnlineTimeUseCase implements UseCaseIntf<OnlineTimeEntity, Params> {
  // TODO: Add test on this class.

  const GetOnlineTimeUseCase({required SystemRepoIntf systemRepo})
      : _systemRepo = systemRepo;

  final SystemRepoIntf _systemRepo;

  @override
  FutureOnlineTimeEntity call(Params params) async {
    return _systemRepo.getOnlineTimeUseCase();
  }
}

class Params implements ParamsIntf {
  // TODO: Add test of this class.
  // TODO: Possibly create an Enum for time zones.

  const Params({
    timeZone = 'Asia/Manila',
    String? ipAddress,
    Coordinate? coordinate,
  })  : _timeZone = timeZone,
        _ipAddress = ipAddress,
        _coordinate = coordinate;

  final String _timeZone;
  final String? _ipAddress;
  final Coordinate? _coordinate;

  String get timeZone => _timeZone;
  String? get ipAddress => _ipAddress;
  Coordinate? get coordinate => _coordinate;

  @override
  List<Object?> get props => [timeZone, ipAddress, coordinate];

  @override
  bool? get stringify => true;
}
