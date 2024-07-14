import 'package:movies_app/core/network/error_message_model.dart';

class ServerException implements Exception {
  final ErrorMessageModel errorMessageModel;

  ServerException({required this.errorMessageModel});
}

class LocatDataBaseException implements Exception {
  final String message;

  LocatDataBaseException({required this.message});
}
