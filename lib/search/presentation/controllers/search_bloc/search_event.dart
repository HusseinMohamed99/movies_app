part of './../../../../core/helpers/export_manager/export_manager.dart';

abstract class SearchEvent extends Equatable {
  const SearchEvent();
}

class GetSearchResultsEvent extends SearchEvent {
  const GetSearchResultsEvent(this.title);
  final String title;

  @override
  List<Object?> get props => [title];
}
