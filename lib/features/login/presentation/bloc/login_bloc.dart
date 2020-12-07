import 'dart:async';
import 'dart:math';

import 'package:auth/core/validation/email_validator.dart';
import 'package:auth/features/login/data/models/login_model.dart';
import 'package:auth/features/login/data/models/login_response.dart';
import 'package:auth/features/login/domain/usecases/login_usecases.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginWithEmailAndPasswordUseCases loginWithEmailAndPasswordUseCases;
  final EmailValidator emailValidator;

  //final PasswordValidator passwordValidator;

  LoginBloc(
    this.loginWithEmailAndPasswordUseCases,
    this.emailValidator,
    //this.passwordValidator,
  ) : super(LoginInitial());

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    if (event is EmailTextChangeEvent) {
      yield ValidEmailState(
        isValid: emailValidator.validate(event.email),
        email: event.email,
      );
    } else if (event is PasswordTextChangedEvent) {
      yield ValidPasswordState(isValid: event.password.isNotEmpty);
    } else if (event is SubmitLoginEvent) {
      yield* _submitLogin(event);
    }
  }

  Stream<LoginState> _submitLogin(SubmitLoginEvent event) async* {
    final response = await loginWithEmailAndPasswordUseCases.call(
      LoginParams(
        loginModel: LoginModel(
          email: event.email,
          password: event.password,
        ),
      ),
    );
    yield response.fold(
      (l) => FailureLoginState(message: l.message),
      (r) => SuccessfullyLoginState(r),
    );
  }
}
