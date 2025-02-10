part of './../../../core/helpers/export_manager/export_manager.dart';

class GetMovieDetailsUseCase
    extends GenericUseCase<MovieDetails, MovieDetailsParameters> {
  GetMovieDetailsUseCase({required this.baseMovieRepository});
  final MovieDataRepository baseMovieRepository;

  @override
  Future<Either<Failure, MovieDetails>> call(
      MovieDetailsParameters parameters) async {
    return await baseMovieRepository.getMovieDetails(parameters);
  }
}

class MovieDetailsParameters extends Equatable {
  const MovieDetailsParameters({required this.movieID});
  final int movieID;

  @override
  List<Object> get props => [movieID];
}
