import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:gameplay/shared/theme/app_colors.dart';
import 'package:gameplay/shared/theme/app_text_styles.dart';
import 'package:gameplay/shared/widgets/buttons/discord_button.dart';

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
                horizontal: 24
              ),
              child: new Text(
                'Conecte-se e organize suas jogatinas',
                textAlign: TextAlign.center,
                style: AppTextStyles.titleHome,
              ),
            ),
            new Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 16
              ),
              child: new Text(
                'Crie grupos para jogar seus games favoritos com seus amigos',
                textAlign: TextAlign.center,
                style: AppTextStyles.trailingBackground,
              ),
            ),
            new SizedBox(height: 36),
            new Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24
              ),
              child: new DiscordButtonWidget(
                label: 'Entrar com Discord',
                onTap: () => Modular.to.pushReplacementNamed('/home'),
              ),
            )
          ],
        ),
      ),
    );
  }
}