import 'package:flutter/material.dart';
import 'package:gameplay/shared/theme/app_colors.dart';
import 'package:gameplay/shared/theme/app_text_styles.dart';
import 'package:gameplay/shared/widgets/cards/category_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
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
            new Container(
              height: 120,
              child: new ListView(
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
            )
          ],
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
      height: 56,
      width: 56,
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
              height: 56,
              width: 56,
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
              onTap: () {}
            ),
          ),
        ),
      ),
    ),
  );

  Widget _sectionTile({
    required String title,
    required String? subtitle
  }) => new ListTile(
    contentPadding: EdgeInsets.zero,
    title: new Text(
      title,
      style: AppTextStyles.titleListTileBackground,
    ),
    trailing: new Text(
      subtitle!,
      style: AppTextStyles.captionBackground,
    )
  );
}