import '../../../../interfaces/params_intf.dart';
import '../../../../interfaces/use_case_intf.dart';
import '../entities/user_entity.dart';

typedef ThisUseCase = UseCaseIntf<UserEntity, Params>;

class CreateUserWithEmailAndPassword implements ThisUseCase {
  // TODO: Add test on this class.

  const CreateUserWithEmailAndPassword();

  @override
  call(Params params) {}
}

class Params implements ParamsIntf {
  // TODO: Add test on this abstract class.

  const Params({required String email, required String password})
      : _email = email,
        _password = password;

  final String _email, _password;

  @override
  List<Object?> get props => [_email, _password];

  @override
  bool? get stringify => true;
}
