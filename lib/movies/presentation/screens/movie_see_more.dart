part of './../../../core/helpers/export_manager/export_manager.dart';

class MovieSeeMoreScreen extends StatelessWidget {
  const MovieSeeMoreScreen({
    super.key,
    required this.movieList,
    required this.title,
    required this.addEvent,
    required this.fetchData,
  });

  final List<Movies> movieList;
  final String title;
  final Function addEvent;
  final bool fetchData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context, title: '$title Movies'),
      body: ExploreAllMoviesOrTvsPage(
        itemCount: movieList.length + (fetchData ? 0 : 1),
        itemBuilder: (context, index) {
          if (index < movieList.length) {
            final movie = movieList[index];
            return BuildMovieCard(movie: movie);
          } else {
            addEvent();
            return const LoadingIndicator();
          }
        },
        addEvent: addEvent(),
      ),
    );
  }
}

class BuildMovieCard extends StatelessWidget {
  const BuildMovieCard({
    super.key,
    required this.movie,
  });
  final Movies movie;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorManager.darkPrimary,
        borderRadius: BorderRadius.circular(10).r,
        border: Border.all(
          color: ColorManager.whiteColor,
        ),
      ),
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
      margin: EdgeInsets.symmetric(vertical: 10.h),
      child: InkWell(
        onTap: () => navigateToMovieDetails(context, movie.id),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0).r,
                border: Border.all(
                  color: ColorManager.whiteColor,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0).r,
                child: CachedImage(
                  boxFit: BoxFit.fitHeight,
                  imageUrl: ApiConstance.imageURL(movie.backdropPath),
                  width: 120.w,
                  height: 140.h,
                ),
              ),
            ),
            const Space(height: 0, width: 10),
            Expanded(
              child: BuildMovieCardInfo(movie: movie),
            ),
          ],
        ),
      ),
    );
  }
}

class BuildMovieCardInfo extends StatelessWidget {
  const BuildMovieCardInfo({
    super.key,
    required this.movie,
  });

  final Movies movie;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10.h,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          movie.title,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: TextStyleManager.titleMedium(context: context),
        ),
        BuildReleaseDateChip(releaseDate: movie.releaseDate),
        BuildRating(rating: movie.voteAverage),
        Text(
          movie.overview,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyleManager.labelSmall(context: context),
        ),
      ],
    );
  }
}
