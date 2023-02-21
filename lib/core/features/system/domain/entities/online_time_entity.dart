import '../../../../interfaces/entity_intf.dart';

class OnlineTimeEntity implements EntityIntf {
  // TODO: Add test on this class.

  const OnlineTimeEntity({required DateTime dateTime}) : _dateTime = dateTime;

  final DateTime _dateTime;

  DateTime get dateTime => _dateTime;

  int get year => dateTime.year;
  int get month => dateTime.month;
  int get day => dateTime.day;
  int get hour => dateTime.hour;
  int get minute => dateTime.minute;
  int get second => dateTime.second;
  int get millisecond => dateTime.millisecond;
  int get microsecond => dateTime.microsecond;
  int get weekday => dateTime.weekday;
  String get timeZoneName => dateTime.timeZoneName;
  int get timeZoneOffset => dateTime.timeZoneOffset.inHours;

  @override
  List<Object?> get props => [dateTime];

  @override
  bool? get stringify => true;
}
