import 'package:auth/core/validation/validator.dart';
import 'package:injectable/injectable.dart';

@injectable
class PasswordValidator extends Validator {
  @override
  // TODO: implement props
  List<Object> get props => [];

  @override
  bool validate(String value) {
    return value != null && int.parse(value) > 6;
  }
}