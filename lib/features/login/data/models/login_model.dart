import 'package:auth/features/login/domain/entities/login_entities.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class LoginModel extends LoginEntities {

  LoginModel({
    @required String email,
    @required String password,
});
  @override
  List<Object> get props => [email, password ];

  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return LoginModel(
      email: json['email'],
      password: json['password'],
    );
  }
}
