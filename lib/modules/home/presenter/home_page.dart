import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:gameplay/shared/theme/app_colors.dart';
import 'package:gameplay/shared/theme/app_text_styles.dart';
import 'package:gameplay/shared/widgets/buttons/button_widget.dart';
import 'package:gameplay/shared/widgets/cards/category_card.dart';
import 'package:gameplay/shared/widgets/tiles/list_tile_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: () => _closeApp(),
      child: new Scaffold(
        backgroundColor: AppColors.secondary80,
        appBar: _appBar(),
        body: new Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              new SizedBox(height: 16),
              _categoryList(),
              new Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8
                ),
                child: _sectionTile(
                  title: 'Partidas Agendadas',
                  subtitle: 'Total 6'
                ),
              ),
              new Expanded(
                child: new ListView(
                  physics: new BouncingScrollPhysics(),
                  children: [
                    new ListTileWidget(
                      label: 'Lendários',
                      category: 'Ranqueada',
                      date: '18/06 às 21:00h',
                      type: 'Anfitrião',
                      onTap: () => Modular.to.pushNamed('/detail'),
                    ),
                    new SizedBox(height: 8),
                    new ListTileWidget(
                      label: 'Yeah, baby',
                      category: 'Diversão',
                      date: '18/06 às 21:00h',
                      type: 'Visitante',
                      onTap: () => Modular.to.pushNamed('/detail'),
                    ),
                    new SizedBox(height: 8),
                    new ListTileWidget(
                      label: 'Rumo ao topo',
                      category: 'Duelo',
                      date: '18/06 às 21:00h',
                      type: 'Anfitrião',
                      onTap: () => Modular.to.pushNamed('/detail'),
                    ),
                    new SizedBox(height: 8),
                    new ListTileWidget(
                      label: 'Bora queimar tudo',
                      category: 'Ranqueada',
                      date: '18/06 às 21:00h',
                      type: 'Anfitrião',
                      onTap: () => Modular.to.pushNamed('/detail'),
                    ),
                    new SizedBox(height: 8),
                    new ListTileWidget(
                      label: 'Valorosos',
                      category: 'Diversão',
                      date: '18/06 às 21:00h',
                      type: 'Anfitrião',
                      onTap: () => Modular.to.pushNamed('/detail'),
                    ),
                    new SizedBox(height: 8),
                    new ListTileWidget(
                      label: 'Rolezão Monstro',
                      category: 'Diversão',
                      date: '18/06 às 21:00h',
                      type: 'Visitante',
                      onTap: () => Modular.to.pushNamed('/detail'),
                    ),
                    new SizedBox(height: 8),
                    new ListTileWidget(
                      label: 'Construtores',
                      category: 'Diversão',
                      date: '18/06 às 21:00h',
                      type: 'Visitante',
                      onTap: () => Modular.to.pushNamed('/detail'),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _appBarButton({
    required IconData icon,
    required VoidCallback onTap
  }) => new GestureDetector(
    onTap: onTap,
    child: new Container(
      height: 48,
      width: 48,
      decoration: new BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(12),
      ),
      child: new Icon(
        icon,
        size: 32,
        color: AppColors.heading,
      ),
    ),
  );

  PreferredSize _appBar() => new PreferredSize(
    preferredSize: new Size(
      double.maxFinite, 90
    ),
    child: new SafeArea(
      child: new Container(
        color: AppColors.secondary80,
        child: new Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8
          ),
          child: new ListTile(
            contentPadding: EdgeInsets.zero,
            leading: new Container(
              height: 48,
              width: 48,
              decoration: new BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(12),
              ),
              child: new Icon(
                Icons.person_rounded,
                color: AppColors.heading,
                size: 36,
              ),
            ),
            title: new Text(
              'Olá, Paulo',
              style: AppTextStyles.titleListTileBackground,
            ),
            subtitle: new Text(
              'Hoje é dia de vitória',
              style: AppTextStyles.buttonBackground,
            ),
            trailing: _appBarButton(
              icon: Icons.add_rounded,
              onTap: () => Modular.to.pushNamed('/schedule')
            ),
          ),
        ),
      ),
    ),
  );

  Widget _sectionTile({
    required String title,
    required String subtitle
  }) => new ListTile(
    contentPadding: EdgeInsets.zero,
    title: new Text(
      title,
      style: AppTextStyles.titleListTileBackground,
    ),
    trailing: new Text(
      subtitle,
      style: AppTextStyles.captionBackground,
    )
  );

  Widget _categoryList() => new Container(
    height: 120,
    child: new ListView(
      physics: new BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      children: [
        new CategoryCard(
          image: 'assets/ranked.svg',
          label: 'Ranqueada',
          onTap: () {},
        ),
        new SizedBox(width: 16),
        new CategoryCard(
          image: 'assets/duel.svg',
          label: 'Duelo',
          onTap: () {},
        ),
        new SizedBox(width: 16),
        new CategoryCard(
          image: 'assets/fun.svg',
          label: 'Diversão',
          onTap: () {},
        ),
        new SizedBox(width: 16),
        new CategoryCard(
          image: 'assets/training.svg',
          label: 'Treinamento',
          onTap: () {},
        ),
      ],
    ),
  );

  Future<bool> _closeApp() async {
    final response = await showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.secondary80,
      builder: (context) => new Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          new Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 32
            ),
            child: new Text(
              'Deseja sair do app?',
              style: AppTextStyles.titleRegular,
            ),
          ),
          new Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16
            ),
            child: new Row(
              children: [
                new Expanded(
                  child: new Container(
                    height: 56,
                    child: new ButtonWidget(
                      label: 'Não',
                        textStyle: AppTextStyles.buttonBackground,
                        background: AppColors.secondary80,
                        borderColor: AppColors.secondary50,
                        onTap: () => Modular.to.pop(false)
                    ),
                  ),
                ),
                new SizedBox(width: 16),
                new Expanded(
                  child: new Container(
                    height: 56,
                    child: new ButtonWidget(
                      label: 'Sim',
                      textStyle: AppTextStyles.buttonBackground,
                      background: AppColors.primary,
                      onTap: () => Modular.to.pop(true),
                    ),
                  ),
                ),
              ],
            ),
          ),
          new SizedBox(height: 24)
        ],
      )
    );

    return response;
  }
}