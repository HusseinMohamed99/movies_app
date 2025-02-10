part of './../helpers/export_manager/export_manager.dart';

abstract class Failure extends Equatable {
  const Failure({required this.message});
  final String message;
  @override
  List<Object?> get props => [message];
}

class ServerFailure extends Failure {
  const ServerFailure({required super.message});
}

class DatabaseFailure extends Failure {
  const DatabaseFailure({required super.message});
}
