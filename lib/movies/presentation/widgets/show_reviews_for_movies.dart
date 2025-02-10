part of './../../../core/helpers/export_manager/export_manager.dart';

class ShowReviews extends StatelessWidget {
  const ShowReviews({
    super.key,
    required this.moviesDetailsStates,
  });

  final MoviesDetailsStates moviesDetailsStates;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppString.reviews,
          style: TextStyleManager.titleSmall(context: context),
        ),
        const Space(height: 8, width: 0),
        ShowReviewsForMovies(moviesDetailsStates.moviesDetails?.reviews),
      ],
    );
  }
}

class ShowReviewsForMovies extends StatelessWidget {
  const ShowReviewsForMovies(
    this.reviews, {
    super.key,
  });
  final List<Review>? reviews;
  @override
  Widget build(BuildContext context) {
    return SectionCastOrReviewsListView(
      height: 150.h,
      itemCount: reviews?.length ?? 0,
      itemBuilder: (context, index) => ReviewCard(
        review: reviews?[index] ??
            const Review(
              authorName: '',
              content: '',
              rating: 0.0,
              elapsedTime: '',
              avatarUrl: '',
              authorUserName: '',
            ),
      ),
    );
  }
}
