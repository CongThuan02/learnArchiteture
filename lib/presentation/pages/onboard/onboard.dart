part of 'onboard_import.dart';

@RoutePage()
class Onborad extends StatefulWidget {
  const Onborad({super.key});

  @override
  State<Onborad> createState() => _OnboradState();
}

class _OnboradState extends State<Onborad> {
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding:  EdgeInsets.symmetric(vertical: 60.0.h),
            child: Image.asset(
              "assets/images/journo_logo.png",
              color: Colors.black,
              width: 139.w,
              height: 42.h,
            ),
          ),
          PageView(
            controller: pageController,
            children: const [
              One(),
              Tow(),
              True(),
            ],
          ).expand(),
          Padding(
            padding:  EdgeInsets.all(5.0.h),
            child: ElevatedButton(
              onPressed: () {
                context.pushRoute(LoginScreenRoute());
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(MediaQuery.of(context).size.width, 44.h),
              ),
              child: const Text("Get Stated"),
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(vertical: 8.0.h,horizontal:10.w),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    context.pushRoute(LoginScreenRoute());
                  },
                  child: const Text(
                    "Skip",
                    style: TextStyle(
                      fontSize: 16,
                      color: MyColor.primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SmoothPageIndicator(
                  controller: pageController, // PageController
                  count: 3,
                  effect:  WormEffect(
                    activeDotColor: MyColor.primaryColor,
                    dotHeight: 12.0.h,
                    dotWidth: 12.0.w,
                  ), // your preferred effect
                  onDotClicked: (index) {},
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      if (pageController.page! >=
                          pageController.page!.length - 1) {
                        context.pushRoute(LoginScreenRoute());
                      } else {
                        pageController.nextPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.ease);
                      }
                    });
                  },
                  child:  Text(
                    "Next",
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: MyColor.primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class One extends StatefulWidget {
  const One({super.key});

  @override
  State<One> createState() => _OneState();
}

class _OneState extends State<One> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/images/background1.png",
          width: 333.w,
          height: 333.h,
        ),
         Text(
          "Discover, engage and read the latest articles oras well as share your own thoughts and ideas with the community",
          style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w700),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}

class Tow extends StatefulWidget {
  const Tow({super.key});

  @override
  State<Tow> createState() => _TowState();
}

class _TowState extends State<Tow> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/images/backgorund2.png",
          width: 333.w,
          height: 333.h,
        ),
         Text(
          "Customize your reading experience and join the conversation by creating an account.",
          style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w700),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}

class True extends StatefulWidget {
  const True({super.key});

  @override
  State<True> createState() => _TrueState();
}

class _TrueState extends State<True> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/images/background3.png",
          width: 333,
          height: 333,
        ),
        const Text(
          "Explore a wide selection of categories, or use the search bar to find specific topics",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
