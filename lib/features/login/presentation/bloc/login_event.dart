part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();
}

class EmailTextChangeEvent extends LoginEvent {
  final String email;

  EmailTextChangeEvent(this.email);

  @override
  // TODO: implement props
  List<Object> get props => [email];
}

class SubmitEmailEvent extends LoginEvent {
  final String email;

  SubmitEmailEvent(this.email);

  @override
  List<Object> get props => [email];
}

class PasswordTextChangedEvent extends LoginEvent {
  final String password;

  PasswordTextChangedEvent({this.password});

  @override
  List<Object> get props => [password];
}

class SubmitLoginEvent extends LoginEvent {
  final String email;
  final String password;

  SubmitLoginEvent({this.email, this.password});

  @override
  List<Object> get props => [password, email];
}
