import 'package:ecommerce_app/core/errors/api_exception.dart';
import 'package:ecommerce_app/core/errors/failure.dart';

class ApiFailure extends Failure {
  const ApiFailure({required super.message, required super.statusCode});
  factory ApiFailure.fromException(ApiException exception) {
    return ApiFailure(
        message: exception.message, statusCode: exception.statusCode);
  }
}
