part of './../../../core/helpers/export_manager/export_manager.dart';

class NowPlayingCarousel extends StatelessWidget {
  const NowPlayingCarousel({super.key, required this.movies});
  final List<Movies> movies;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        height: 300.h,
        viewportFraction: 1.0,
        onPageChanged: (index, reason) {},
      ),
      items: movies.map((movie) => _buildCarouselItem(movie, context)).toList(),
    );
  }

  Widget _buildCarouselItem(Movies movie, BuildContext context) {
    return GestureDetector(
      key: const Key('openMovieMinimalDetail'),
      onTap: () {
        if (AdManager.interstitialAd != null) {
          AdManager.interstitialAd!.show();
        } else {
          dev.log('⚠️ Interstitial ad is not ready, loading a new one...');
          AdManager.loadInterstitialAd();
        }
        navigateToMovieDetails(context, movie.id);
      },
      child: Stack(
        children: [
          CachedImage(
            boxFit: BoxFit.fill,
            imageUrl: ApiConstance.imageURL(movie.backdropPath),
            width: double.infinity,
            height: context.height * 0.5,
          ),
          _buildMovieInfo(context, movie),
        ],
      ),
    );
  }

  Widget _buildMovieInfo(BuildContext context, Movies movie) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(bottom: 16.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.circle,
                  color: ColorManager.primaryRedColor,
                  size: 16.sp,
                ),
                Space(height: 0, width: 4),
                Text(
                  AppString.nowPlaying.toUpperCase(),
                  style: TextStyleManager.bodySmall(context: context),
                ),
              ],
            ),
            Text(
              movie.title,
              textAlign: TextAlign.center,
              style: TextStyleManager.titleLarge(context: context),
            ),
          ],
        ),
      ),
    );
  }
}
