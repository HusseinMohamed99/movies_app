part of './../../../core/helpers/export_manager/export_manager.dart';

class BuildHeaderWidget extends StatelessWidget {
  const BuildHeaderWidget({
    super.key,
    required this.title,
    required this.movies,
    required this.addEvent,
    required this.fetchData,
  });
  final String title;
  final List<Movies> movies;
  final VoidCallback addEvent;
  final bool fetchData;

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
              navigateToSeeMore(
                fetchData: fetchData,
                context: context,
                movies: movies,
                title: title,
                addEvent: addEvent,
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
