part of './../../../core/helpers/export_manager/export_manager.dart';

class SearchUseCase extends GenericUseCase<List<SearchResultItem>, String> {
  SearchUseCase({required this.baseSearchRepository});
  final SearchRepository baseSearchRepository;

  @override
  Future<Either<Failure, List<SearchResultItem>>> call(
      String parameters) async {
    return await baseSearchRepository.search(parameters);
  }
}
