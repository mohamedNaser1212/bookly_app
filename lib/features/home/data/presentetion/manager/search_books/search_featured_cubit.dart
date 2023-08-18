import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../models/book_model/book_model.dart';
import '../../../repos/home_repo.dart';

part 'search_featured_state.dart';

class SearchFeaturedCubit extends Cubit<SearchFeaturedState> {
  SearchFeaturedCubit(this.homeRepo) : super(SearchFeaturedInitial());
  final HomeRepo homeRepo;
  Future<void>fetchSearchFeaturedBooks({required String query})async{
    emit(SearchFeaturedLoading());

    var result=await homeRepo.fetchSearchBooks(query: query);
    print(result);
    result.fold((failure) {
      emit(  SearchFeaturedFailure(message: ''));
    } , (books) {
      emit(SearchFeaturedSuccess(books));
    });
    print(result);
  }
}
