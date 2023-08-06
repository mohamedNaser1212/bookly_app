import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';


import '../models/book_model/book_model.dart';
import 'home_repo.dart';

class HomeRepoImp1 implements HomeRepo{
  final ApiService apiService;

  HomeRepoImp1(this.apiService);
  @override
  Future<Either<Failure ,List<BookModel>>> fetchNewsetBooks() async{

try {
  var data= await apiService.get(endPoint: 'volumes?Filtering=free-ebooks&Sorting=newest &q=subject:Programing');
List <BookModel>books=[];
for(var item in data['items']){
  books.add(BookModel.fromJson(item));
}
return right(books);

}  catch (e) {
return left(ServerFailure());
}

  }
  @override
  Future<Either<Failure ,List<BookModel>>> fetchFeaturedBooks(){
    throw UnimplementedError();
  }
}