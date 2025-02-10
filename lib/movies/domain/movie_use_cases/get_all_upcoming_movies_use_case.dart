part of './../../../core/helpers/export_manager/export_manager.dart';

class GetAllUpcomingMoviesUseCase extends GenericUseCase<List<Movies>, int> {
  GetAllUpcomingMoviesUseCase({required this.baseMovieRepository});
  final MovieDataRepository baseMovieRepository;

  @override
  Future<Either<Failure, List<Movies>>> call(int parameters) async {
    return await baseMovieRepository.getAllUpcomingMovies(parameters);
  }
}
