part of './../../../core/helpers/export_manager/export_manager.dart';

class NoResults extends StatelessWidget {
  const NoResults({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Text(
          'No results found',
          style: TextStyleManager.labelMedium(context: context),
        ),
      ),
    );
  }
}
