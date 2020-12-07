import 'package:auth/features/login/data/models/login_model.dart';
import 'package:auth/features/login/data/models/login_response.dart';

abstract class LoginRemoteDataSource {
  Future<LoginResponse> login(LoginModel loginModel);
}