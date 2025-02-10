import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiConstance {
  static String baseUrl = dotenv.env['baseUrl'] ?? '';
  static String appKey = dotenv.env['appKey'] ?? '';
  static String baseProfileUrl = dotenv.env['baseProfileUrl'] ?? '';
  static String baseStillUrl = dotenv.env['baseStillUrl'] ?? '';
  static String baseAvatarUrl = dotenv.env['baseAvatarUrl'] ?? '';
  static String baseVideoUrl = dotenv.env['baseVideoUrl'] ?? '';
  static String baseImageURL = dotenv.env['baseImageURL'] ?? '';
  static String castPlaceHolder = dotenv.env['castPlaceHolder'] ?? '';
  static String avatarPlaceHolder = dotenv.env['avatarPlaceHolder'] ?? '';

  /// API Constance For Movies
  static String nowPlayingMoviesPath =
      '$baseUrl/movie/now_playing?api_key=$appKey';

  static String upcomingMoviesPath = '$baseUrl/movie/upcoming?api_key=$appKey';

  static String popularMoviesPath = '$baseUrl/movie/popular?api_key=$appKey';

  static String topRatedMoviesPath = '$baseUrl/movie/top_rated?api_key=$appKey';

  static String movieDetailsPath(int movieID) =>
      '$baseUrl/movie/$movieID?api_key=$appKey&append_to_response=videos,credits,reviews,similar';

  static String movieRecommendationPath(int movieID) =>
      '$baseUrl/movie/$movieID/recommendations?api_key=$appKey';

  static String movieSimilarPath(int movieID) =>
      '$baseUrl/movie/$movieID/similar?api_key=$appKey';

  static String getAllPopularMoviesPath(int page) {
    return '$baseUrl/movie/popular?api_key=$appKey&page=$page';
  }

  static String getAllTopRatedMoviesPath(int page) {
    return '$baseUrl/movie/top_rated?api_key=$appKey&page=$page';
  }

  static String getAllUpcomingMoviesPath(int page) {
    return '$baseUrl/movie/upcoming?api_key=$appKey&page=$page';
  }

  /// API Constance For Base Image URL
  static String imageURL(String imagePath) => '$baseImageURL$imagePath';

  /// API Constance For TV
  static String onTheAirTvPath =
      '$baseUrl/tv/on_the_air?api_key=$appKey&with_original_language=en';

  static String airingTodayTvPath =
      '$baseUrl/tv/airing_today?api_key=$appKey&page=2';

  static String popularTvsPath =
      '$baseUrl/tv/popular?api_key=$appKey&with_original_language=en';

  static String topRatedTvsPath =
      '$baseUrl/tv/top_rated?api_key=$appKey&with_original_language=en';

  static String tvDetailsPath(int tvID) =>
      '$baseUrl/tv/$tvID?api_key=$appKey&append_to_response=similar,videos';

  static String tvRecommendationPath(int tvID) =>
      '$baseUrl/tv/$tvID/recommendations?api_key=$appKey';

  static String tvSimilarPath(int tvID) =>
      '$baseUrl/tv/$tvID/similar?api_key=$appKey';

  static String tvSeasonPath(int tvID, int numberOfSeason) =>
      '$baseUrl/tv/$tvID/season/$numberOfSeason?api_key=$appKey';

  /// API Constance For Search
  static String getSearchPath(String title) {
    return '$baseUrl/search/multi?api_key=$appKey&query=$title';
  }
}
