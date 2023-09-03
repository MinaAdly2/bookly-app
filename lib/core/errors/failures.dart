import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  Failure({required this.errMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errMessage});

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errMessage: 'Connection timeout with API server');
      case DioExceptionType.sendTimeout:
        return ServerFailure(errMessage: 'Send timeout with API server');
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errMessage: 'Receive timeout with API server');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioException.response!.statusCode!, dioException.response!.data!);
      case DioExceptionType.cancel:
        return ServerFailure(errMessage: 'Request to API server was canceld');
      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketException')) {
          return ServerFailure(errMessage: 'No Internet Connection');
        }
        return ServerFailure(errMessage: 'Unexpected Error, Please try again!');

      default:
        return ServerFailure(
            errMessage: 'Opps there was an error, Please try again!');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(errMessage: response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure(
          errMessage: 'Your request not found, Please try later!');
    } else if (statusCode == 500) {
      return ServerFailure(
          errMessage: 'Internal server error, please try later!');
    } else {
      return ServerFailure(
          errMessage: 'Opps there was an error, Please try again!');
    }
  }
}
