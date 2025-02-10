part of './../../../core/helpers/export_manager/export_manager.dart';

class RecommendationLoadedListView extends StatelessWidget {
  const RecommendationLoadedListView({
    super.key,
    required this.state,
  });
  final TvsDetailsStates state;
  @override
  Widget build(BuildContext context) {
    if (state.tvsRecommendation.isEmpty) {
      return Image.asset(
        Assets.imagesNoData,
        height: 100.h,
        width: 100.w,
      );
    } else {
      return ListView.separated(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        itemCount: state.tvsRecommendation.length,
        itemBuilder: (context, index) {
          return RecommendationLoadedItem(
            backdropPath: state.tvsRecommendation[index].backdropPath ?? '',
            id: state.tvsRecommendation[index].id,
            name: state.tvsRecommendation[index].name,
          );
        },
        separatorBuilder: (context, index) {
          return Space(height: 20, width: 0);
        },
      );
    }
  }
}
