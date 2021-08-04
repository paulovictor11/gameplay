import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:gameplay/shared/theme/app_colors.dart';
import 'package:gameplay/shared/theme/app_text_styles.dart';
import 'package:gameplay/shared/widgets/buttons/button_widget.dart';
import 'package:gameplay/shared/widgets/buttons/select_widget.dart';
import 'package:gameplay/shared/widgets/cards/category_card.dart';
import 'package:gameplay/shared/widgets/inputs/input_widget.dart';
import 'package:gameplay/shared/widgets/inputs/textarea_widget.dart';
import 'package:gameplay/shared/widgets/tiles/simple_tile_widget.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({ Key? key }) : super(key: key);

  @override
  _SchedulePageState createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {

  final _dia = new TextEditingController();
  final _mes = new TextEditingController();

  final _hora = new TextEditingController();
  final _minuto = new TextEditingController();

  final _descricao = new TextEditingController();

  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: AppColors.secondary80,
      appBar: new AppBar(
        backgroundColor: AppColors.secondary40,
        centerTitle: true,
        title: new Text(
          'Agendar Partida',
          style: AppTextStyles.titleRegular,
        ),
      ),
      body: new SingleChildScrollView(
        physics: new BouncingScrollPhysics(),
        child: new Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16
          ),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              new SizedBox(height: 16),
              _sectionTile(
                title: 'Categoria'
              ),
              _categoryList(),
              new SizedBox(height: 32),
              new SelectWidget(
                label: 'Selecione um servidor',
                icon: Icons.cloud_rounded,
                onTap: () => _showServers(),
              ),
              new SizedBox(height: 32),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _dateInput(),
                  _timeInput()
                ],
              ),
              new SizedBox(height: 16),
              _sectionTile(
                title: 'Descrição',
                subtitle: 'Max 100 caracteres'
              ),
              new TextareaWidget(
                keyboardType: TextInputType.text,
                controller: _descricao,
                maxLength: 100,
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: new Container(
        height: 85,
        padding: const EdgeInsets.all(16),
        child: new ButtonWidget(
          label: 'Agendar',
          textStyle: AppTextStyles.titleRegular,
          background: AppColors.primary,
          onTap: () => Modular.to.pushReplacementNamed('/home')
        ),
      ),
    );
  }

  Widget _sectionTile({
    required String title,
    String? subtitle
  }) => new ListTile(
    contentPadding: EdgeInsets.zero,
    title: new Text(
      title,
      style: AppTextStyles.titleListTileBackground,
    ),
    trailing: new Text(
      subtitle ?? '',
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
          onTap: () {
            selected = 1;
            setState(() { });
          },
          selected: selected == 1,
        ),
        new SizedBox(width: 16),
        new CategoryCard(
          image: 'assets/duel.svg',
          label: 'Duelo',
          onTap: () {
            selected = 2;
            setState(() { });
          },
          selected: selected == 2,
        ),
        new SizedBox(width: 16),
        new CategoryCard(
          image: 'assets/fun.svg',
          label: 'Diversão',
          onTap: () {
            selected = 3;
            setState(() { });
          },
          selected: selected == 3,
        ),
        new SizedBox(width: 16),
        new CategoryCard(
          image: 'assets/training.svg',
          label: 'Treinamento',
          onTap: () {
            selected = 4;
            setState(() { });
          },
          selected: selected == 4,
        ),
      ],
    ),
  );

  Widget _dateInput() => new Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      new Text(
        'Dia e mês',
        style: AppTextStyles.titleListTileBackground,
      ),
      new SizedBox(height: 16),
      new Row(
        children: [
          new InputWidget(
            keyboardType: TextInputType.number,
            controller: _dia,
            maxLength: 2,
            textAlign: TextAlign.center,
          ),
          new SizedBox(width: 8),
          new Text(
            '/',
            style: AppTextStyles.buttonBackground,
          ),
          new SizedBox(width: 8),
          new InputWidget(
            keyboardType: TextInputType.number,
            controller: _mes,
            maxLength: 2,
            textAlign: TextAlign.center,
          )
        ],
      )
    ],
  );

  Widget _timeInput() => new Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      new Text(
        'Hora e minuto',
        style: AppTextStyles.titleListTileBackground,
      ),
      new SizedBox(height: 16),
      new Row(
        children: [
          new InputWidget(
            keyboardType: TextInputType.number,
            controller: _hora,
            maxLength: 2,
            textAlign: TextAlign.center,
          ),
          new SizedBox(width: 8),
          new Text(
            ':',
            style: AppTextStyles.buttonBackground,
          ),
          new SizedBox(width: 8),
          new InputWidget(
            keyboardType: TextInputType.number,
            controller: _minuto,
            maxLength: 2,
            textAlign: TextAlign.center,
          )
        ],
      )
    ],
  );

  void _showServers() => showModalBottomSheet(
    context: context,
    backgroundColor: AppColors.secondary80,
    builder: (context) => new Column(
      children: [
        new Container(
          width: 50,
          margin: const EdgeInsets.all(15),
          decoration: new BoxDecoration(
            border: Border.all(
              width: 2,
              color: AppColors.primary
            ),
            borderRadius: BorderRadius.circular(30)
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
                  title: 'Rumo ao topo',
                  subtitle: 'Administrador',
                  icon: Icons.cloud_rounded,
                  onTap: () {}
                ),
                new SimpleTileWidget(
                  title: 'Bora queimar tudo',
                  subtitle: 'Convidado',
                  icon: Icons.cloud_rounded,
                  onTap: () {}
                ),
                new SimpleTileWidget(
                  title: 'Yeah, boy',
                  subtitle: 'Convidado',
                  icon: Icons.cloud_rounded,
                  onTap: () {}
                ),
                new SimpleTileWidget(
                  title: 'Volorosos',
                  subtitle: 'Convidado',
                  icon: Icons.cloud_rounded,
                  onTap: () {}
                ),
                new SimpleTileWidget(
                  title: 'Rolezão monstro',
                  subtitle: 'Convidado',
                  icon: Icons.cloud_rounded,
                  onTap: () {}
                ),
                new SimpleTileWidget(
                  title: 'Construtores',
                  subtitle: 'Convidado',
                  icon: Icons.cloud_rounded,
                  onTap: () {}
                ),
                new SimpleTileWidget(
                  title: 'Battle Insane',
                  subtitle: 'Convidado',
                  icon: Icons.cloud_rounded,
                  onTap: () {}
                ),
              ],
            ),
          ),
        )
      ],
    )
  );
}