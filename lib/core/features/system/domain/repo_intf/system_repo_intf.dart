import 'package:fpdart/fpdart.dart';

import '../../../../failures/online_time_failure.dart';
import '../entities/coordinate.dart';
import '../entities/online_time_entity.dart';

typedef FutureOnlineTimeEntity
    = Future<Either<OnlineTimeFailure, OnlineTimeEntity>>;

abstract class SystemRepoIntf {
  const SystemRepoIntf();

  FutureOnlineTimeEntity getOnlineTimeUseCase({
    timeZone = 'Asia/Manila',
    String? ipAddress,
    Coordinate? coordinate,
  });
}
