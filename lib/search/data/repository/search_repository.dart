part of './../../../core/helpers/export_manager/export_manager.dart';

class SearchRepositoryImpl extends SearchRepository {
  SearchRepositoryImpl({required this.baseSearchRemoteDataSource});
  final SearchRemoteDataSource baseSearchRemoteDataSource;

  @override
  Future<Either<Failure, List<SearchResultItem>>> search(String title) async {
    final result = await baseSearchRemoteDataSource.search(title);
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(
          ServerFailure(message: failure.errorMessageModel.statusMessage));
    }
  }
}
