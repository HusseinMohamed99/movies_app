part of './../../../core/helpers/export_manager/export_manager.dart';

class GetMovieRecommendationUseCase extends GenericUseCase<
    List<MoviesRecommendation>, MovieRecommendationParameters> {
  GetMovieRecommendationUseCase({required this.baseMovieRepository});
  final MovieDataRepository baseMovieRepository;

  @override
  Future<Either<Failure, List<MoviesRecommendation>>> call(
      MovieRecommendationParameters parameters) async {
    return await baseMovieRepository.getMovieRecommendation(parameters);
  }
}

class MovieRecommendationParameters extends Equatable {
  const MovieRecommendationParameters({required this.movieID});
  final int movieID;

  @override
  List<Object> get props => [movieID];
}
