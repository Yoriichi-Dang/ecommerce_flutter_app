import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;
  final int statusCode;
  const Failure({required this.message, required this.statusCode});
  String get errorMessage => 'Error: $message';
  @override
  List<Object?> get props => [message, statusCode];
}
