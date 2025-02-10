part of './../../../core/helpers/export_manager/export_manager.dart';

class GetAllTopRatedMoviesUseCase extends GenericUseCase<List<Movies>, int> {
  GetAllTopRatedMoviesUseCase({required this.baseMovieRepository});
  final MovieDataRepository baseMovieRepository;

  @override
  Future<Either<Failure, List<Movies>>> call(int parameters) async {
    return await baseMovieRepository.getAllTopRatedMovies(parameters);
  }
}
