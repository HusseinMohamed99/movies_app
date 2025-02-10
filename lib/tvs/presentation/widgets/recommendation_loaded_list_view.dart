part of './../../../core/helpers/export_manager/export_manager.dart';

class RecommendationLoadedListView extends StatelessWidget {
  const RecommendationLoadedListView({
    super.key,
    required this.state,
  });
  final TvsDetailsStates state;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      itemCount: state.tvsRecommendation.length,
      itemBuilder: (context, index) {
        final recommendation = state.tvsRecommendation[index];
        return RecommendationLoadedItem(
          tvsRecommendation: recommendation,
        );
      },
      separatorBuilder: (context, index) {
        return Space(height: 20, width: 0);
      },
    );
  }
}
