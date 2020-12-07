import 'dart:async';
import 'dart:math';

import 'package:auth/core/validation/email_validator.dart';
import 'package:auth/core/validation/password_validator.dart';
import 'package:auth/features/login/data/models/login_response.dart';
import 'package:auth/features/login/domain/usecases/login_usecases.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginWithEmailAndPasswordUseCases loginWithEmailAndPasswordUseCases;
  final EmailValidator emailValidator;
  final PasswordValidator passwordValidator;

  LoginBloc(
    this.loginWithEmailAndPasswordUseCases,
    this.emailValidator,
    this.passwordValidator,
  ) : super(LoginInitial());

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
