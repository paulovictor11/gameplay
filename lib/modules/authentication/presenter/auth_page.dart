import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:gameplay/shared/theme/app_colors.dart';
import 'package:gameplay/shared/theme/app_text_styles.dart';
import 'package:gameplay/shared/widgets/buttons/button_widget.dart';
import 'package:gameplay/shared/widgets/inputs/input_widget.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({ Key? key }) : super(key: key);

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {

  final _email = new TextEditingController();
  final _senha = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary80,
      body: new SafeArea(
        child: new SingleChildScrollView(
          physics: new BouncingScrollPhysics(),
          child: new Column(
            children: [
              Image.asset('assets/illustration.png'),
              new Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24
                ),
                child: new Text(
                  'Conecte-se e organize suas jogatinas',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.titleRegular,
                ),
              ),
              new Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 8
                ),
                child: new Text(
                  'Crie grupos para jogar seus games favoritos com seus amigos',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.buttonBackground,
                ),
              ),
              new SizedBox(height: 16),
              new Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                child: new InputWidget(
                  keyboardType: TextInputType.emailAddress,
                  controller: _email,
                  label: 'Email',
                  icon: Icons.email_rounded,
                  width: double.maxFinite,
                ),
              ),
              new SizedBox(height: 16),
              new Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                child: new InputWidget(
                  keyboardType: TextInputType.emailAddress,
                  controller: _senha,
                  label: 'Senha',
                  icon: Icons.lock_rounded,
                  width: double.maxFinite,
                  isPass: true,
                ),
              ),
              new SizedBox(height: 16),
              new Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24
                ),
                child: new ButtonWidget(
                  label: 'Entrar',
                  textStyle: AppTextStyles.titleRegular,
                  background: AppColors.primary,
                  onTap: () => Modular.to.pushReplacementNamed('/home')
                ),
              ),
              // new SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}