part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  const LoginState();
}

class LoginInitial extends LoginState {
  @override
  List<Object> get props => [];
}

class ValidEmailState extends LoginState {
  final bool isValid;
  final String email;

  ValidEmailState({this.email, this.isValid});

  @override
  // TODO: implement props
  List<Object> get props => [isValid, email];
}

class ShowLoadingDialogState extends LoginState {
  ShowLoadingDialogState();

  @override
  List<Object> get props => [];
}

class HideLoadingDialogState extends LoginState {
  HideLoadingDialogState();

  @override
  List<Object> get props => [];
}

class FailureEmailState extends LoginState {
  final String message;
  final int id = Random().nextInt(1000000);

  FailureEmailState({this.message});

  @override
  List<Object> get props => [message, id];
}

class SuccessfullyEmailState extends LoginState {
  final String email;
  final int id = Random().nextInt(1000000);

  SuccessfullyEmailState({this.email});

  @override
  List<Object> get props => [email, id];
}

class ValidPasswordState extends LoginState {
  final bool isValid;

  ValidPasswordState({this.isValid});

  @override
  List<Object> get props => [isValid];
}

class FailureLoginState extends LoginState {
  final String message;
  final int id = Random().nextInt(1000000);

  FailureLoginState({this.message});

  @override
  List<Object> get props => [message, id];
}

class SuccessfullyLoginState extends LoginState {
  final int id = Random().nextInt(1000000);
  LoginResponse response;

  SuccessfullyLoginState(this.response);

  @override
  List<Object> get props => [id, response];
}
