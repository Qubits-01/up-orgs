import 'params_intf.dart';

abstract class UseCaseIntf<T, P> {
  // TODO: Add test on this abstract class.

  const UseCaseIntf();

  /// Every use case should have a call method (i.e., callable classes).
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
