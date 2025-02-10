part of './../../../core/helpers/export_manager/export_manager.dart';

class RecommendationLoadedItem extends StatelessWidget {
  const RecommendationLoadedItem({
    super.key,
    required this.backdropPath,
    required this.name,
    required this.id,
  });

  final String backdropPath, name;
  final int id;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TvsDetailsScreen(tvsID: id),
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
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ).r,
                  border: Border.all(
                    color: ColorManager.whiteColor,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(8.0)).r,
                  child: CachedImage(
                    imageUrl: ApiConstance.imageURL(backdropPath),
                    width: 90.w,
                    height: 90.h,
                    boxFit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  name,
                  textAlign: TextAlign.center,
                  style: TextStyleManager.labelMedium(context: context),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
