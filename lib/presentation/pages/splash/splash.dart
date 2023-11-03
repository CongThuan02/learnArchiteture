part of 'splash_imports.dart';

@RoutePage()
class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  initState(){
    super.initState();
    moveToOnBoard();

  }
  moveToOnBoard() async {
    await Future.delayed(const Duration(seconds: 2), () {
      AutoRouter.of(context).push(const OnboradRoute());
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.primaryColor,
      body: Center(
        child: Image.asset(
          "assets/images/journo_logo.png",
          width: 139,
          height: 42,
        ),
      ),
    );
  }
}
