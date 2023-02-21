import 'package:fpdart/fpdart.dart';

import '../../../../interfaces/failure_intf.dart';
import '../entities/coordinate.dart';
import '../entities/online_time_entity.dart';

abstract class SystemRepoIntf {
  const SystemRepoIntf();

  Future<Either<FailureIntf, OnlineTimeEntity>> getOnlineTimeUseCase({
    timeZone = 'Asia/Manila',
    String? ipAddress,
    Coordinate? coordinate,
  });
}
