import 'package:flutter/material.dart';
import 'package:gameplay/shared/theme/app_colors.dart';
import 'package:gameplay/shared/theme/app_text_styles.dart';
import 'package:gameplay/shared/widgets/buttons/discord_button.dart';
import 'package:gameplay/shared/widgets/tiles/simple_tile_widget.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({ Key? key }) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: AppColors.secondary80,
      appBar: new AppBar(
        backgroundColor: AppColors.secondary40,
        centerTitle: true,
        title: new Text(
          'Detalhes',
          style: AppTextStyles.titleRegular,
        ),
        actions: [
          new IconButton(
            onPressed: () {},
            icon: new Icon(
              Icons.share_rounded,
              color: AppColors.primary,
            ),
          )
        ],
      ),
      body: new Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          new Flexible(
            child: _header(),
          ),
          new Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16
            ),
            child: _sectionTile(
              title: 'Jogadores',
              subtitle: 'Total 3'
            ),
          ),
          new Expanded(
            child: new Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16
              ),
              child: new ListView(
                physics: new BouncingScrollPhysics(),
                children: [
                  new SimpleTileWidget(
                    title: 'Paulo Victor',
                    subtitle: 'Disponível',
                    icon: Icons.person_rounded,
                    onTap: () {}
                  ),
                  new SimpleTileWidget(
                    title: 'Kalenne Pereira',
                    subtitle: 'Offline',
                    icon: Icons.person_rounded,
                    onTap: () {}
                  ),
                  new SimpleTileWidget(
                    title: 'Gabriel Dieric',
                    subtitle: 'Ocupado',
                    icon: Icons.person_rounded,
                    onTap: () {}
                  ),
                ]
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: new Container(
        height: 85,
        padding: const EdgeInsets.all(16),
        child: new DiscordButtonWidget(
          label: 'Entrar na partida',
          onTap: () {},
        ),
      )
    );
  }

  Widget _header() => new Container(
    alignment: Alignment.bottomLeft,
    decoration: new BoxDecoration(
      image: new DecorationImage(
        image: new AssetImage(
          'assets/banner.png',
        ),
        fit: BoxFit.fill
      ),
    ),
    child: new ListTile(
      isThreeLine: true,
      title: new Text(
        'Lendários',
        style: AppTextStyles.titleListTileBackground,
      ),
      subtitle: new Text(
        'É hoje que vamos chegar ao challenger sem perder uma partida na md10',
        style: AppTextStyles.buttonBackground,
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
}