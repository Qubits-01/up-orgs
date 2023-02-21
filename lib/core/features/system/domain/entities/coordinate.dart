import 'package:equatable/equatable.dart';

class Coordinate extends Equatable {
  // TODO: Add test in this class.

  const Coordinate({required double latitude, required double longitude})
      : _latitude = latitude,
        _longitude = longitude;

  final double _latitude, _longitude;

  double get latitude => _latitude;
  double get longitude => _longitude;

  @override
  List<Object?> get props => [latitude, longitude];
}
