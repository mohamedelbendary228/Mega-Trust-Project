
import 'package:auth/core/error/failures.dart';
import 'package:auth/core/usecases/usecase.dart';
import 'package:auth/features/login/data/models/login_model.dart';
import 'package:auth/features/login/data/models/login_response.dart';
import 'package:auth/features/login/domain/repositories/login_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';


class LoginWithEmailAndPasswordUseCases implements UseCase<LoginResponse, LoginParams>{
  final LoginWithEmailAndPasswordRepository repository;

  LoginWithEmailAndPasswordUseCases(this.repository);

  @override
  Future<Either<ResponseError, LoginResponse>> call(LoginParams params) {
    return repository.loginWithEmailAndPassword(params.loginModel);
  }
}

class LoginParams extends Equatable {
  final LoginModel loginModel;

  const LoginParams({this.loginModel});
  @override
  List<Object> get props => [loginModel];
}
