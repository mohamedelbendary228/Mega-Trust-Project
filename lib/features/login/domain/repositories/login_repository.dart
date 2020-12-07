import 'package:auth/core/error/failures.dart';
import 'package:auth/features/login/data/models/login_model.dart';
import 'package:auth/features/login/data/models/login_response.dart';
import 'package:auth/features/login/domain/entities/login_entities.dart';
import 'package:dartz/dartz.dart';

abstract class LoginWithEmailAndPasswordRepository {
  Future<Either<ResponseError, LoginResponse>> loginWithEmailAndPassword(
      LoginModel loginModel);

}
