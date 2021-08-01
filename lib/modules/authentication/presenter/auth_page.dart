import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gameplay/shared/theme/app_colors.dart';
import 'package:gameplay/shared/theme/app_text_styles.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({ Key? key }) : super(key: key);

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary80,
      body: new SafeArea(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Align(
              alignment: Alignment.topCenter,
              child: Image.asset('assets/illustration.png')
            ),
            new Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 36
              ),
              child: new Text(
                'Conecte-se e organize suas jogatinas',
                textAlign: TextAlign.center,
                style: AppTextStyles.titleHome,
              ),
            ),
            new Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 48,
                vertical: 16
              ),
              child: new Text(
                'Crie grupos para jogar seus games favoritos com seus amigos',
                textAlign: TextAlign.center,
                style: AppTextStyles.trailingBackground,
              ),
            ),
            new SizedBox(height: 48),
            new Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 48
              ),
              child: _discordButton(),
            )
          ],
        ),
      ),
    );
  }

  Widget _discordButton() => new GestureDetector(
    onTap: () => Modular.to.pushNamed('/home'),
    child: new Container(
      height: 56,
      decoration: new BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(12),
      ),
      child: new Row(
        children: [
          new Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24
            ),
            child: new Icon(
              FontAwesomeIcons.discord,
              color: AppColors.heading,
              size: 28,
            )
          ),
          new Container(
            width: 1,
            color: AppColors.secondary80,
          ),
          new Expanded(
            child: new Text(
              'Entrar com Discord',
              textAlign: TextAlign.center,
              style: AppTextStyles.buttonBackground,
            ),
          )
        ],
      ),
    ),
  );
}