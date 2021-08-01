import 'package:flutter/material.dart';

import 'package:gameplay/shared/widgets/cards/category_card.dart';

class CategoryWidget extends StatefulWidget {

  final int? selected;
  final Function(int?) onTap;

  const CategoryWidget({
    Key? key,
    this.selected,
    required this.onTap,
  }) : super(key: key);

  @override
  _CategoryWidgetState createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 120,
      child: new ListView(
        scrollDirection: Axis.horizontal,
        children: [
          new CategoryCard(
            image: 'assets/ranked.svg',
            label: 'Ranqueada',
            onTap: () => widget.onTap,
            selected: widget.selected == 0,
          ),
          new SizedBox(width: 16),
          new CategoryCard(
            image: 'assets/duel.svg',
            label: 'Duelo',
            onTap: () => widget.onTap,
            selected: widget.selected == 1,
          ),
          new SizedBox(width: 16),
          new CategoryCard(
            image: 'assets/fun.svg',
            label: 'Diversão',
            onTap: () => widget.onTap,
            selected: widget.selected == 2,
          ),
          new SizedBox(width: 16),
          new CategoryCard(
            image: 'assets/training.svg',
            label: 'Treinamento',
            onTap: () => widget.onTap,
            selected: widget.selected == 3,
          ),
        ],
      ),
    );
  }
}