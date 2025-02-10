part of './../../../core/helpers/export_manager/export_manager.dart';

class GetTopRatedMoviesUseCase
    extends GenericUseCase<List<Movies>, NoParameters> {
  GetTopRatedMoviesUseCase({required this.baseMovieRepository});
  final MovieDataRepository baseMovieRepository;

  @override
  Future<Either<Failure, List<Movies>>> call(NoParameters parameters) async {
    return await baseMovieRepository.getTopRatedMovies();
  }
}
