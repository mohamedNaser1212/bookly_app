import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../models/book_model/book_model.dart';
import '../../../repos/home_repo.dart';


part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
final HomeRepo homeRepo;

Future<void>fetchNewestdBooks()async {
 emit(NewestBooksLoading());
    var result = await homeRepo.fetchNewsetBooks();
    result.fold((failure) {
      emit(NewestBooksFailure(failure.errMessage));

    }, (books) {
      emit(NewestBooksSuccess(books));
    }
    );
  }

  //void fetchNewBooks() {
   // emit(NewestBooksLoading());
   // DioHelper.getData(
    //  url: 'volumes?Filtering=free-ebooks&Sorting=newest &q=subject:Programming',
      //query: {
      //  'filtering':'free-ebooks',
      //  'Sorting':'newest',
      //  'q':'subject:programing',
      //  }
 //   ).then((value) {
  //    emit(NewestBooksSuccess());
  //    print(value.data);
  //  }).catchError((e){
   //   emit(NewestBooksFailure(e.toString()));
  //    print(e.toString());
  //  });

 // }
}


