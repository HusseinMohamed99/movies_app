part of './../../../core/helpers/export_manager/export_manager.dart';

class Review extends Equatable {
  const Review({
    required this.authorName,
    required this.authorUserName,
    required this.avatarUrl,
    required this.rating,
    required this.content,
    required this.elapsedTime,
  });
  final String authorName;
  final String authorUserName;
  final String avatarUrl;
  final double rating;
  final String content;
  final String elapsedTime;

  @override
  List<Object?> get props => [
        authorName,
        authorUserName,
        avatarUrl,
        rating,
        content,
        elapsedTime,
      ];
}
