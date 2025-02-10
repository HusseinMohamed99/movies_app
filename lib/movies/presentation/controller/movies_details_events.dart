part of './../../../core/helpers/export_manager/export_manager.dart';

abstract class MoviesDetailsEvent extends Equatable {
  const MoviesDetailsEvent();
}

class GetMoviesDetailsEvent extends MoviesDetailsEvent {
  const GetMoviesDetailsEvent(this.movieID);
  final int movieID;

  @override
  List<Object?> get props => [movieID];
}

class GetMoviesRecommendationEvent extends MoviesDetailsEvent {
  const GetMoviesRecommendationEvent(this.id);
  final int id;

  @override
  List<Object> get props => [id];
}

class GetMoviesSimilarEvent extends MoviesDetailsEvent {
  const GetMoviesSimilarEvent(this.id);
  final int id;

  @override
  List<Object> get props => [id];
}
