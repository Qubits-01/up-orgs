import '../../constants/enums/online_time_source_enum.dart';
import '../interfaces/failure_intf.dart';

class OnlineTimeFailure extends FailureIntf {
  // TODO: Add test on this class.

  const OnlineTimeFailure({
    required super.title,
    required super.message,
    required OnlineTimeSourceEnum onlineTimeSource,
  }) : _onlineTimeSource = onlineTimeSource;

  final OnlineTimeSourceEnum _onlineTimeSource;

  OnlineTimeSourceEnum get onlineTimeSource => _onlineTimeSource;

  @override
  List<Object?> get props => [title, message, onlineTimeSource];
}
