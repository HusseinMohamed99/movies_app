part of './../helpers/export_manager/export_manager.dart';

// for server
class ServerException implements Exception {
  ServerException({required this.errorMessageModel});
  final ErrorMessageModel errorMessageModel;
}

// for local
class LocalDatabaseException implements Exception {
  const LocalDatabaseException({
    required this.message,
  });
  final String message;
}
