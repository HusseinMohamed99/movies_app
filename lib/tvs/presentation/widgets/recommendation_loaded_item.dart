part of './../../../core/helpers/export_manager/export_manager.dart';

class RecommendationLoadedItem extends StatelessWidget {
  const RecommendationLoadedItem({
    super.key,
    required this.tvsRecommendation,
  });

  final TvsRecommendation tvsRecommendation;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TvsDetailsScreen(tvsID: tvsRecommendation.id),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10).r,
          border: Border.all(
            color: ColorManager.whiteColor,
          ),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(8.0)).r,
          child: CachedImage(
            imageUrl:
                ApiConstance.imageURL(tvsRecommendation.backdropPath ?? ''),
            width: 90.w,
            height: 90.h,
            boxFit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
