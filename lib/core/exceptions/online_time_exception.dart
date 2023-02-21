import '../../constants/enums/online_time_source_enum.dart';
import '../interfaces/exception_intf.dart';

class OnlineTimeException extends ExceptionIntf {
  // TODO: Add test on this class.

  const OnlineTimeException({
    required super.title,
    required super.message,
    required super.stackTrace,
    required OnlineTimeSourceEnum onlineTimeSource,
  }) : _onlineTimeSource = onlineTimeSource;

  final OnlineTimeSourceEnum _onlineTimeSource;

  OnlineTimeSourceEnum get onlineTimeSource => _onlineTimeSource;

  @override
  List<Object?> get props => [title, message, stackTrace, onlineTimeSource];
}
