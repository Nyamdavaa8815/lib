import 'package:equatable/equatable.dart';

class ErrorModel extends Equatable {
  final String code;
  final String message;
  final String plugin;
  const ErrorModel({
    this.code = '',
    this.message = '',
    this.plugin = '',
  });

  @override
  List<Object> get props => [code, message, plugin];

  @override
  String toString() =>
      'ErrorModel(code: $code, message: $message, plugin: $plugin)';
}
