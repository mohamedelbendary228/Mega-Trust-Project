import 'package:auth/core/error/exceptions.dart';
import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
abstract class ResponseError extends Equatable {
  String message;
  int statusCode;

  @override
  List<Object> get props => [message, statusCode];
}

// ignore: must_be_immutable
class ServerFailure extends ResponseError {
  ServerFailure({String message, int statusCode = -1}) {
    this.message = message;
    this.statusCode = statusCode;
  }

  @override
  List<Object> get props => [message];
}

// ignore: must_be_immutable
class CacheFailure extends ResponseError {
  CacheFailure({String message}) {
    this.message = message;
  }
}

errorHandler(error) {
  throw ServerException(message: "Something went wrong");
}


