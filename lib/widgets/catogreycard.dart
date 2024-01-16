import 'package:flutter/material.dart';
import 'package:news/models/category_model.dart';

class CatogreyCard extends StatelessWidget {
  const CatogreyCard({super.key, required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Container(
        height: 100,
        width: 200,
        decoration: BoxDecoration(
          image:  DecorationImage(
            image: AssetImage(category.image),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child:  Center(
          child: Text(
            category.categoryname,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
