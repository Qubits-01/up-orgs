import 'package:equatable/equatable.dart';

class OnboardingEntry extends Equatable {
  const OnboardingEntry({
    required String entryImage,
    required String mainText,
    required String descriptionText,
  })  : _entryImage = entryImage,
        _mainText = mainText,
        _descriptionText = descriptionText;

  final String _entryImage;
  final String _mainText;
  final String _descriptionText;

  String get entryImage => _entryImage;
  String get mainText => _mainText;
  String get descriptionText => _descriptionText;

  @override
  List<Object?> get props => [_entryImage, _mainText, _descriptionText];
}
