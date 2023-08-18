part of 'search_featured_cubit.dart';

@immutable
abstract class SearchFeaturedState {}

class SearchFeaturedInitial extends SearchFeaturedState {}
class SearchFeaturedLoading extends SearchFeaturedState {}
class SearchFeaturedSuccess extends SearchFeaturedState {
  final List<BookModel>books;
   SearchFeaturedSuccess(this.books);
}
class SearchFeaturedFailure extends SearchFeaturedState {
  final String message;
  SearchFeaturedFailure({required this.message});
}
