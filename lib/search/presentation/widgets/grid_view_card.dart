part of './../../../core/helpers/export_manager/export_manager.dart';

class GridViewCard extends StatelessWidget {
  const GridViewCard({
    super.key,
    required this.item,
  });

  final SearchResultItem item;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            item.isMovie
                ? Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MovieDetailsScreen(
                        movieID: item.id,
                      ),
                    ),
                  )
                : Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TvsDetailsScreen(
                        tvsID: item.id,
                      ),
                    ),
                  );
          },
          child: AspectRatio(
            aspectRatio: 2 / 3,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8).r,
                border: Border.all(
                  color: ColorManager.whiteColor,
                  width: 1.0,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8).r,
                child: CachedImage(
                  imageUrl: ApiConstance.imageURL(item.posterUrl),
                  width: double.infinity,
                  boxFit: BoxFit.fill,
                  height: 150.h,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Text(
            item.title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyleManager.labelMedium(context: context),
          ),
        ),
      ],
    );
  }
}
