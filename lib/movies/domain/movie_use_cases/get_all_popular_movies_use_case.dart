part of './../../../core/helpers/export_manager/export_manager.dart';

class GetAllPopularMoviesUseCase extends GenericUseCase<List<Movies>, int> {
  GetAllPopularMoviesUseCase({required this.baseMovieRepository});
  final MovieDataRepository baseMovieRepository;

  @override
  Future<Either<Failure, List<Movies>>> call(int parameters) async {
    return await baseMovieRepository.getAllPopularMovies(parameters);
  }
}
