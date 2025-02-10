part of './../../../core/helpers/export_manager/export_manager.dart';

class ShowCast extends StatelessWidget {
  const ShowCast({
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
          AppString.cast,
          style: TextStyleManager.titleSmall(context: context),
        ),
        const Space(height: 8, width: 0),
        ShowCastForMovies(moviesDetailsStates.moviesDetails?.cast),
      ],
    );
  }
}

class ShowCastForMovies extends StatelessWidget {
  const ShowCastForMovies(this.cast, {super.key});
  final List<Cast>? cast;
  @override
  Widget build(BuildContext context) {
    return SectionCastOrReviewsListView(
      height: 140.h,
      itemCount: cast?.length ?? 0,
      itemBuilder: (context, index) => CastCard(
        cast: cast?[index] ??
            const Cast(
              name: '',
              profileUrl: '',
              gender: 0,
            ),
      ),
    );
  }
}
