part of './../../../core/helpers/export_manager/export_manager.dart';

class SimilarLoadedListView extends StatelessWidget {
  const SimilarLoadedListView({
    super.key,
    required this.state,
  });
  final TvsDetailsStates state;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 16.h,
      ),
      itemCount: state.tvsSimilar.length,
      itemBuilder: (context, index) {
        return RecommendationLoadedItem(
          tvsDetailsStates: state,
          index: index,
        );
      },
      separatorBuilder: (context, index) {
        return Space(height: 20, width: 0);
      },
    );
  }
}
