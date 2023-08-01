import 'package:bookly/core/errors/failures.dart';
import 'package:dartz/dartz.dart';


import '../models/book_model/book_model.dart';
import 'home_repo.dart';

class HomeRepoImp1 implements HomeRepo{
  @override
  Future<Either<Failure ,List<BookModel>>> fetchBestSellerBooks(){


    throw UnimplementedError();
  }
  @override
  Future<Either<Failure ,List<BookModel>>> fetchFeaturedBooks(){
    throw UnimplementedError();
  }
}