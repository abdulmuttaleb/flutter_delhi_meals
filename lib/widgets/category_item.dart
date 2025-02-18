import 'dart:io';

import 'package:deli_meals/screens/category_meals_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {

  final String title;
  final Color color;
  final String categoryId;

  CategoryItem(this.title, this.color, this.categoryId);

  void selectCategory(BuildContext ctx){
    Navigator.of(ctx).pushNamed(
        CategoryMealsScreen.routeName,
        arguments: { 'title' : title, 'id': categoryId});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline6,

        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [color.withOpacity(0.7), color],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight
          ),
          borderRadius: BorderRadius.circular(15),

        ),
      ),
    );
  }
}
