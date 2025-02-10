part of './../../../core/helpers/export_manager/export_manager.dart';

class SeasonsLoadedItem extends StatelessWidget {
  const SeasonsLoadedItem({
    super.key,
    required this.season,
  });

  final Season season;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10).r,
        border: Border.all(
          color: ColorManager.whiteColor,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
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
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(7),
                  bottomLeft: Radius.circular(7),
                ).r,
                child: CachedImage(
                  imageUrl: ApiConstance.imageURL(season.posterPath),
                  width: 90.w,
                  height: 90.h,
                  boxFit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                season.name,
                style: TextStyleManager.labelMedium(context: context),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
