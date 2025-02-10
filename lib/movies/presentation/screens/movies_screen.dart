part of './../../../core/helpers/export_manager/export_manager.dart';

class MoviesScreen extends StatelessWidget {
  const MoviesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: NowPlayingWidget()),
        SliverToBoxAdapter(child: PopularMoviesWidget()),
        SliverToBoxAdapter(child: UpcomingMoviesWidget()),
        SliverToBoxAdapter(child: TopRatedMoviesWidget()),
        SliverToBoxAdapter(child: Space(height: 24, width: 0)),
      ],
    );
  }
}
