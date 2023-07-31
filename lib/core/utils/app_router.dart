import 'package:bookly/features/home/data/presentetion/views/home_view.dart';
import 'package:bookly/features/home/data/presentetion/views/search_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/data/presentetion/views/books_details_view.dart';
import '../../views/SplashView.dart';

abstract class AppRouter{
 static const KHomeView='/homeView';
 static const KBookDetailsView='/bookDetailsView';
 static const KSearchView='/searchView';

 static final router=GoRouter(
    routes: [
      GoRoute(path: '/',builder: (context,state)=>const SplashView()),

      GoRoute(path: KHomeView,builder: (context,state)=>const HomeView()),
      GoRoute(path: KBookDetailsView,builder: (context,state)=>const BoxDetailsView()),
      GoRoute(path: KSearchView,builder: (context,state)=>const SearchView()),

    ]
);

}