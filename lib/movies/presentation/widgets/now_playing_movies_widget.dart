part of './../../../core/helpers/export_manager/export_manager.dart';

class NowPlayingWidget extends StatelessWidget {
  const NowPlayingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoviesBloc, MoviesStates>(
      buildWhen: (previous, current) =>
          previous.nowPlayingState != current.nowPlayingState,
      builder: (context, state) {
        if (state.nowPlayingState == RequestState.loaded) {
          return NowPlayingCarousel(movies: state.nowPlayingMovies);
        } else if (state.nowPlayingState == RequestState.error) {
          return BuildErrorMessage(errorMessage: state.nowPlayingMessage);
        } else {
          return Skeletonizer(
              enabled: true, child: NowPlayingCarousel(movies: []));
        }
      },
    );
  }
}
