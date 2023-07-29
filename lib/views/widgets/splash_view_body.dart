import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/views/widgets/slidingtext.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';


class splashViewbody extends StatefulWidget {
  const splashViewbody({super.key});

  @override
  State<splashViewbody> createState() => _splashViewbodyState();
}

class _splashViewbodyState extends State<splashViewbody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late  Animation<Offset> slidingAnimation;


  @override
  void initState() {
    super.initState();
    initslidinganimation();
    navigateToHome();

  }




@override
  void dispose() {

    super.dispose();
    animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(
          height: 4,
        ),
     slidingText(slidingAnimation: slidingAnimation,),
      ],
    );

  }
  void initslidinganimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    slidingAnimation=Tween<Offset>(begin:const Offset(0,10) ,end:Offset.zero).animate(animationController);

    animationController.forward();
  }
  void navigateToHome() {
    Future.delayed(const Duration(seconds: 2),(){
    //   Get.to(()=>const HomeView(),transition:Transition.fade,duration:KTransitionDuration);
    // });
      GoRouter.of(context).push(AppRouter.KHomeView);

  },
    );
}
}