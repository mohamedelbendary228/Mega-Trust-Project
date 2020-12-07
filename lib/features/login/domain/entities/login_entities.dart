import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class LoginEntities extends Equatable {
  final String email;
  final String password;

  LoginEntities({
    @required this.email,
    @required this.password,
  });

  @override
  // TODO: implement props
  List<Object> get props => [email, password];
}
