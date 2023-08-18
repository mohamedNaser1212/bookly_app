import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/home/data/presentetion/manager/featured_book_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/data/presentetion/manager/newset_books/newest_books_cubit.dart';
import 'package:bookly/features/home/data/presentetion/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/features/home/data/repos/home_repo_implementation.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';
import 'features/home/data/presentetion/manager/search_books/search_featured_cubit.dart';


void main() async {
 // WidgetsFlutterBinding.ensureInitialized();
  //await DioHelper.init();
 // Bloc.observer = MyBlocObserver();
  setupservicelocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context)=>FeaturedBooksCubit(
          getIt.get<HomeRepoImp1>(),

          )..fetchFeaturedBooks(),
        ),

        BlocProvider(
          create: (context)=>NewestBooksCubit(
            getIt.get<HomeRepoImp1>(),

          )..fetchNewestdBooks(),


        ),
        BlocProvider(create: (context)=>SimilarBooksCubit(
          getIt.get<HomeRepoImp1>(),

        )..fetchSimilarBooks(category: '')),
        BlocProvider(
          create: (context)=>SearchFeaturedCubit(
            getIt.get<HomeRepoImp1>(),

          )..fetchSearchFeaturedBooks(query: '')),



      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: KPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(ThemeData
              .dark()
              .textTheme),
        ),
      ),
    );
  }
}
