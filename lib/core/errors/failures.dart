import 'package:dio/dio.dart';

abstract class Failures {
  final String errMsg;

  Failures({required this.errMsg});
}

class ServerFailure extends Failures {
  ServerFailure({required super.errMsg});

  factory ServerFailure.fromDioError(DioException dioexception) {
    switch (dioexception.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(
            errMsg:
                'Connection timeout occurred. Please check your internet connection and try again.');
      case DioExceptionType.sendTimeout:
        return ServerFailure(
            errMsg:
                'Request could not be sent within the specified timeout. Please try again later.');
      case DioExceptionType.receiveTimeout:
        return ServerFailure(
            errMsg:
                'Response could not be received within the specified timeout. Please try again later.');
      case DioExceptionType.badCertificate:
        return ServerFailure(
            errMsg:
                'The server\'s SSL certificate is invalid. Please contact the server administrator.');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioexception.response!.statusCode!, dioexception.response!.data);

      case DioExceptionType.cancel:
        return ServerFailure(errMsg: 'Request to API server was canceled ');
      case DioExceptionType.connectionError:
        return ServerFailure(errMsg: 'Connection error ');
      case DioExceptionType.unknown:
        return ServerFailure(errMsg: 'Unexpected error ');
      default:
        return ServerFailure(errMsg: 'oops ERROR');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(errMsg: response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure(errMsg: 'your Request  Not Found, please try again');
    } else if (statusCode == 500) {
      return ServerFailure(errMsg: 'internal server error');
    } else {
      return ServerFailure(errMsg: 'oops ERROR');
    }
  }
}
