import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:gameplay/shared/theme/app_colors.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({ Key? key }) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    Future
      .delayed(new Duration(seconds: 3))
      .then((_) => Modular.to.pushReplacementNamed('/auth'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: AppColors.secondary80,
      body: new Center(
        child: Image.asset('assets/splash.png'),
      ),
    );
  }
}