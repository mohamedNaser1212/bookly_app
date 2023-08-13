

import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  const Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(String errMessage) : super(errMessage);

  factory ServerFailure.fromDioException(DioException dioException) {
    switch(dioException.type){
      case DioException.connectionTimeout:
        return ServerFailure('Send timeout with ApiServer');


      case DioException.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');

      case DioException.receiveTimeout:
        return ServerFailure('Receive timeout with ApiServer');




      default:
        return ServerFailure('Opps There was an Error, Please try again');
    }
    }
    factory ServerFailure.fromResponse(int statusCode,dynamic response){
    if(statusCode==400 ||statusCode==403 ){
      return ServerFailure(response['error']['message']);
    }else if(statusCode==404){
      return ServerFailure(response['error']['message']);
    }else if(statusCode==500){
      return ServerFailure('Internal Server error');
    }else{
      return ServerFailure('Opps please try again');
    }

    }

}
