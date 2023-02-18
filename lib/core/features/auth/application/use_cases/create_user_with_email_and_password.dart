import 'package:fpdart/fpdart.dart';
import '../../../../failures/auth_failure.dart';
import '../../data/repo_impl/auth_repo_impl.dart';

import '../../../../interfaces/params_intf.dart';
import '../../../../interfaces/use_case_intf.dart';
import '../entities/user_entity.dart';

typedef ThisUseCase = UseCaseIntf<UserEntity, Params>;

class CreateUserWithEmailAndPassword implements ThisUseCase {
  // TODO: Add test on this class.

  const CreateUserWithEmailAndPassword({required AuthRepoImpl authRepo})
      : _authRepo = authRepo;

  final AuthRepoImpl _authRepo;

  @override
  Future<Either<AuthFailure, UserEntity>> call(Params params) async {
    return await _authRepo.createUserWithEmailAndPasswordUseCase(
      email: params.email,
      password: params.password,
    );
  }
}

class Params implements ParamsIntf {
  // TODO: Add test on this abstract class.

  const Params({required String email, required String password})
      : _email = email,
        _password = password;

  final String _email, _password;

  String get email => _email;
  String get password => _password;

  @override
  List<Object?> get props => [_email, _password];

  @override
  bool? get stringify => true;
}
