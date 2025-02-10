part of './../../../core/helpers/export_manager/export_manager.dart';

class SimilarLoadedListView extends StatelessWidget {
  const SimilarLoadedListView({
    super.key,
    required this.state,
  });
  final TvsDetailsStates state;
  @override
  Widget build(BuildContext context) {
    if (state.tvsSimilar.isEmpty) {
      return Image.asset(
        Assets.imagesNoData,
        height: 100.h,
        width: 100.w,
      );
    } else {
      return ListView.separated(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 16.h,
        ),
        itemCount: state.tvsSimilar.length,
        itemBuilder: (context, index) {
          return RecommendationLoadedItem(
            backdropPath: state.tvsSimilar[index].backdropPath ?? '',
            id: state.tvsSimilar[index].id,
            name: state.tvsSimilar[index].name,
          );
        },
        separatorBuilder: (context, index) {
          return const Space(height: 20, width: 0);
        },
      );
    }
  }
}
