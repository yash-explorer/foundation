import 'package:flutter/material.dart';

class CategoriesItem extends StatelessWidget {
  final String title;
  final Color color;
  const CategoriesItem(this.color,this.title);
  


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child:Text(title),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color.withOpacity(0.7),
          color] ,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight),
      borderRadius: BorderRadius.circular(12)
      ),
    );
  }
}