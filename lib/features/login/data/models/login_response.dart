import 'package:equatable/equatable.dart';

class LoginResponse extends Equatable {
  final String email;
  final String userId;
  final String username;

  LoginResponse({
    this.email,
    this.userId,
    this.username,
  });

  LoginResponse copyWith({
    String userId,
    String email,
    String username,
  }) =>
      LoginResponse(
        email: email ?? this.email,
        userId: userId ?? this.userId,
        username: username ?? this.username,
      );

  @override
  List<Object> get props => [];


}
