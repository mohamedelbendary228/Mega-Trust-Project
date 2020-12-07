import 'package:auth/core/error/failures.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<Type, Params> {
  Future<Either<ResponseError, Type>> call(Params params);
}