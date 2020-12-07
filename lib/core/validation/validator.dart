import 'package:equatable/equatable.dart';

abstract class Validator extends Equatable {
  bool validate(String value);
}