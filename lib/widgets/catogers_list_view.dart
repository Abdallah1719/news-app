import 'package:flutter/material.dart';
import 'package:news/models/category_model.dart';
import 'package:news/widgets/catogreycard.dart';

class CatogersListView extends StatelessWidget {
  const CatogersListView({
    super.key,
  });
  final List<CategoryModel> categores = const [
    CategoryModel(image: 'assets/business.avif', categoryname: 'Business'),
    CategoryModel(image: 'assets/business.avif', categoryname: 'Business'),
    CategoryModel(image: 'assets/business.avif', categoryname: 'Business'),
    CategoryModel(image: 'assets/business.avif', categoryname: 'Business'),
    CategoryModel(image: 'assets/business.avif', categoryname: 'Business'),
    CategoryModel(image: 'assets/business.avif', categoryname: 'Business'),
    CategoryModel(image: 'assets/business.avif', categoryname: 'Business'),
    CategoryModel(image: 'assets/business.avif', categoryname: 'Business'),
  ];
   
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categores.length,
          itemBuilder: (context, index) {
            return CatogreyCard(
              category: categores[index],
            );
          }),
    );
  }
}
