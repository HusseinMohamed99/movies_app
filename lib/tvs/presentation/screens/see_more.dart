part of './../../../core/helpers/export_manager/export_manager.dart';

class SeeMoreScreen extends StatelessWidget {
  const SeeMoreScreen({
    super.key,
    required this.tvsList,
    required this.name,
  });

  final List<Tvs> tvsList;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: ExploreAllMoviesOrTvsPage(
        itemCount: tvsList.length,
        itemBuilder: (context, index) {
          if (index < tvsList.length) {
            final tvs = tvsList[index];
            return _buildTvsCard(context, tvs);
          } else {
            return const LoadingIndicator();
          }
        },
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: ColorManager.charCoolColor,
      elevation: 0,
      title: Text(
        "$name Series",
        style: TextStyleManager.labelMedium(context: context),
      ),
      centerTitle: true,
    );
  }
}

Widget _buildTvsCard(BuildContext context, Tvs tvs) {
  return Container(
    decoration: BoxDecoration(
      color: ColorManager.darkPrimary,
      borderRadius: BorderRadius.circular(10).r,
    ),
    padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
    margin: EdgeInsets.symmetric(vertical: 10.h),
    child: InkWell(
      onTap: () => navigateToTvDetails(context, tvs.id),
      child: Row(
        children: [
          _buildTvsImage(tvs),
          Space(height: 0, width: 10),
          Expanded(
            child: _buildTvsInfo(context, tvs),
          ),
        ],
      ),
    ),
  );
}

Widget _buildTvsImage(Tvs tvs) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(8.0).r,
    child: CachedImage(
      boxFit: BoxFit.fitHeight,
      imageUrl: ApiConstance.imageURL(tvs.backdropPath),
      width: 120.w,
      height: 140.h,
    ),
  );
}

Widget _buildTvsInfo(BuildContext context, Tvs tvs) {
  return Column(
    spacing: 10.h,
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Text(
        tvs.name,
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        style: TextStyleManager.titleMedium(context: context),
      ),
      BuildReleaseDateChip(releaseDate: tvs.firstAirDate),
      BuildRating(rating: tvs.voteAverage),
      Text(
        tvs.overview,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyleManager.labelSmall(context: context),
      ),
    ],
  );
}
