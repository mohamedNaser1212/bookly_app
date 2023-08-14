
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../models/book_model/book_model.dart';
import '../../../repos/home_repo.dart';


part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
  final HomeRepo homeRepo;
 Future<void>fetchFeaturedBooks()async{
emit(FeaturedBooksLoading());

var result=await homeRepo.fetchFeaturedBooks();
print(result);
result.fold((failure) {
   emit( const FeaturedBooksFailure('No Internet Connection'));
} , (books) {
  emit(FeaturedBooksSuccess(books));
});
print(result);
}
//List<BookModel>?books;
  //void fetchfeaturedBooks() {
  //  emit(FeaturedBooksLoading());
   // DioHelper.getData(
   //   url:' volumes?Filtering=free-ebook &q=subject:Programming',
    //  query: {
      // 'Filtering':'free-ebooks',

      //  'q':'subject:Programming',
   // }
  //  ).then((value) {
  //    emit(FeaturedBooksSuccess(books!));
   //   print(value.data);
   // }).catchError((e){
   //   emit(FeaturedBooksFailure(e.toString()));
     // print(e.toString());
  //  });

 // }
  //void fetchNewBooks() {
  //  emit(NewestBooksLoading());
   // DioHelper.getData(
   //   url: 'volumes?Filtering=free-ebooks&Sorting=newest &q=subject:Programming',
      //query: {
      //  'filtering':'free-ebooks',
      //  'Sorting':'newest',
      //  'q':'subject:programing',
      //  }
  //  ).then((value) {
  //    emit(NewestBooksSuccess(books!));
   //   print(value.data);
    //}).catchError((e){
    //  emit(NewestBooksFailure(e.toString()));
    //  print(e.toString());
   // });

  //}
}
