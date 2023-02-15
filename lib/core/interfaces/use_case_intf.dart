import 'package:up_orgs/core/interfaces/params_intf.dart';

abstract class UseCaseIntf<T, P> {
  // TODO: Add test on this abstract class.

  const UseCaseIntf();

  dynamic call(P params);
}

class NoParams implements ParamsIntf {
  // TODO: Add test on this class.

  const NoParams();

  @override
  List<Object?> get props => [];

  @override
  bool? get stringify => true;
}
