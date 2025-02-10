part of './../../../core/helpers/export_manager/export_manager.dart';

class BuildContentTv extends StatelessWidget {
  const BuildContentTv({
    super.key,
    required this.tvModel,
    required this.title,
  });
  final List<Tvs> tvModel;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BuildHeaderTvWidget(
          tvModel: tvModel,
          title: title,
        ),
        ContentTvWidget(tvModel: tvModel),
      ],
    );
  }
}

class ContentTvWidget extends StatelessWidget {
  const ContentTvWidget({
    required this.tvModel,
    super.key,
  });

  final List<Tvs> tvModel;
  @override
  Widget build(BuildContext context) {
    return HorizontalListView(
      itemCount: tvModel.length,
      itemBuilder: (context, index) {
        return HorizontalTvCardView(tvModel: tvModel[index]);
      },
    );
  }
}

class BuildHeaderTvWidget extends StatelessWidget {
  const BuildHeaderTvWidget({
    super.key,
    required this.title,
    required this.tvModel,
  });
  final String title;
  final List<Tvs> tvModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyleManager.titleSmall(context: context),
          ),
          GestureDetector(
            onTap: () {
              navigateToTvSeeMore(
                context: context,
                tvModel: tvModel,
                title: title,
              );
            },
            child: Row(
              children: [
                Text(
                  AppString.seeMore,
                  style: TextStyleManager.labelSmall(context: context),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 16.sp,
                  color: ColorManager.whiteColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HorizontalTvCardView extends StatelessWidget {
  const HorizontalTvCardView({
    super.key,
    required this.tvModel,
  });

  final Tvs? tvModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(const Radius.circular(8.0).r),
        border: Border.all(
          color: ColorManager.whiteColor,
          width: 1.0,
        ),
      ),
      child: GestureDetector(
        onTap: () {
          navigateToTvDetails(context, tvModel?.id ?? 0);
        },
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(8.0)).r,
          child: CachedImage(
            boxFit: BoxFit.fitHeight,
            imageUrl: ApiConstance.imageURL(tvModel?.backdropPath ?? ''),
            width: 120.w,
            height: double.infinity,
          ),
        ),
      ),
    );
  }
}
