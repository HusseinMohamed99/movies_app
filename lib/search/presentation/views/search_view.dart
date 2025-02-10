part of './../../../core/helpers/export_manager/export_manager.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<SearchBloc>(),
      child: const SearchWidget(),
    );
  }
}

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(
            top: 12.h,
            left: 16.w,
            right: 16.w,
          ),
          child: Column(
            children: [
              const SearchBarItem(),
              BlocBuilder<SearchBloc, SearchState>(
                builder: (context, state) {
                  switch (state.status) {
                    case SearchRequestStatus.empty:
                      return const SearchText();
                    case SearchRequestStatus.loading:
                      return Expanded(
                        child: Skeletonizer(
                          enabled: true,
                          child: SearchGridView(results: state.searchResults),
                        ),
                      );
                    case SearchRequestStatus.loaded:
                      return Expanded(
                        child: SearchGridView(results: state.searchResults),
                      );
                    case SearchRequestStatus.error:
                      return BuildErrorMessage(errorMessage: state.message);
                    case SearchRequestStatus.noResults:
                      return const NoResults();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
