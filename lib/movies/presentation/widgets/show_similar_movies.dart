part of './../../../core/helpers/export_manager/export_manager.dart';

class ShowSimilar extends StatelessWidget {
  const ShowSimilar({
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
          AppString.moreLikeThis,
          style: TextStyleManager.titleSmall(context: context),
        ),
        const Space(height: 8, width: 0),
        const ShowSimilarMovies(),
      ],
    );
  }
}

class ShowSimilarMovies extends StatelessWidget {
  const ShowSimilarMovies({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoviesDetailsBloc, MoviesDetailsStates>(
      builder: (context, state) {
        if (state.moviesDetailsStates == RequestState.loading) {
          return SizedBox(height: 170.h, child: const LoadingIndicator());
        } else if (state.moviesDetailsStates == RequestState.loaded) {
          return _buildMoviesList(state);
        } else {
          return BuildErrorMessage(errorMessage: state.moviesDetailsMessage);
        }
      },
    );
  }

  Widget _buildMoviesList(MoviesDetailsStates state) {
    return SizedBox(
      height: 170.h,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: state.moviesSimilar.length,
        itemBuilder: (context, index) {
          final similar = state.moviesSimilar[index];

          return Padding(
            padding: EdgeInsets.only(right: 8.w),
            child: GestureDetector(
              onTap: () => _navigateToMovieDetails(context, similar.id),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10).r,
                  border: Border.all(color: ColorManager.whiteColor),
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8.0),
                  ).r,
                  child: CachedImage(
                    imageUrl: ApiConstance.imageURL(similar.backdropPath ?? ''),
                    width: 120.w,
                    height: double.infinity,
                    boxFit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void _navigateToMovieDetails(BuildContext context, int movieID) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MovieDetailsScreen(movieID: movieID),
      ),
    );
  }
}
