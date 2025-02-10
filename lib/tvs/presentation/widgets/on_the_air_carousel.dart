part of './../../../core/helpers/export_manager/export_manager.dart';

class OnTheAirCarousel extends StatelessWidget {
  const OnTheAirCarousel({super.key, required this.tvModel});
  final List<Tvs> tvModel;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        height: context.height * 0.3,
        viewportFraction: 1.0,
        onPageChanged: (index, reason) {},
      ),
      items: tvModel
          .map((tvModel) => BuildCarouselTvItem(tvModel: tvModel))
          .toList(),
    );
  }
}

class BuildCarouselTvItem extends StatelessWidget {
  const BuildCarouselTvItem({
    super.key,
    required this.tvModel,
  });
  final Tvs tvModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: const Key('openMovieMinimalDetail'),
      onTap: () {
        if (AdManager.interstitialAd != null) {
          AdManager.interstitialAd!.show();
        } else {
          dev.log('⚠️ Interstitial ad is not ready, loading a new one...');
          AdManager.loadInterstitialAd();
        }
        navigateToMovieDetails(context, tvModel.id);
      },
      child: Stack(
        children: [
          CachedImage(
            boxFit: BoxFit.fill,
            imageUrl: ApiConstance.imageURL(tvModel.backdropPath),
            width: double.infinity,
            height: context.height * 0.3,
          ),
          BuildTvInfo(tvModel: tvModel),
        ],
      ),
    );
  }
}

class BuildTvInfo extends StatelessWidget {
  const BuildTvInfo({
    super.key,
    required this.tvModel,
  });
  final Tvs tvModel;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
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
              const Space(height: 0, width: 4),
              Text(
                AppString.nowPlaying.toUpperCase(),
                style: TextStyleManager.bodySmall(context: context),
              ),
            ],
          ),
          Text(
            tvModel.name,
            textAlign: TextAlign.center,
            style: TextStyleManager.titleMedium(context: context),
          ),
        ],
      ),
    );
  }
}
