import 'package:auth/core/validation/validator.dart';
import 'package:injectable/injectable.dart';

@injectable
class EmailValidator extends Validator {
  @override
  // TODO: implement props
  List<Object> get props => [];

  @override
  bool validate(String value) {
    return value != null && RegExp(emailRegex).hasMatch(value) ;
  }

  static const Pattern  emailRegex =  r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  
}