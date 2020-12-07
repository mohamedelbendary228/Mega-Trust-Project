import 'package:auth/core/error/exceptions.dart';
import 'package:auth/core/error/failures.dart';
import 'package:auth/features/login/data/datasources/login_remote_datasource.dart';
import 'package:auth/features/login/data/models/login_model.dart';
import 'package:auth/features/login/data/models/login_response.dart';
import 'package:auth/features/login/domain/repositories/login_repository.dart';
import 'package:dartz/dartz.dart';

class LoginWithEmailAndPasswordRepositoryImpl
    implements LoginWithEmailAndPasswordRepository {
  final LoginRemoteDataSource remoteDataSource;

  LoginWithEmailAndPasswordRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<ResponseError, LoginResponse>> loginWithEmailAndPassword(
      LoginModel loginModel) async {
    try {
      final response = await remoteDataSource.login(loginModel);
      return right(response);
    } on ServerException catch (e) {
      return left(ServerFailure(message: e.message, statusCode: e.statusCode));
    } catch (error) {
      return left(ServerFailure(message: "Something went wrong"));
    }
  }
}
