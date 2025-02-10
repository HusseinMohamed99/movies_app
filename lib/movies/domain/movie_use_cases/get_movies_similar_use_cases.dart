part of './../../../core/helpers/export_manager/export_manager.dart';

class GetMovieSimilarUseCase
    extends GenericUseCase<List<MoviesSimilar>, MovieSimilarParameters> {
  GetMovieSimilarUseCase({required this.baseMovieRepository});
  final MovieDataRepository baseMovieRepository;

  @override
  Future<Either<Failure, List<MoviesSimilar>>> call(
      MovieSimilarParameters parameters) async {
    return await baseMovieRepository.getMovieSimilar(parameters);
  }
}

class MovieSimilarParameters extends Equatable {
  const MovieSimilarParameters({required this.movieID});
  final int movieID;

  @override
  List<Object> get props => [movieID];
}
