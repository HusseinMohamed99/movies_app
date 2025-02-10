part of './../../../core/helpers/export_manager/export_manager.dart';

class SearchText extends StatelessWidget {
  const SearchText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Text(
          'Search for movies and TV shows',
          style: TextStyleManager.labelMedium(context: context),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
