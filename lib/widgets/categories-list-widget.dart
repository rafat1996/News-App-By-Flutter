import 'package:flutter/material.dart';
import 'package:newsapp/models/category-model.dart';
import 'package:newsapp/widgets/category-card-widget.dart';

class CategoriesListWidget extends StatelessWidget {
  const CategoriesListWidget({
    super.key,
  });
  final List<CategoryModel> categories = const [
    CategoryModel(image: 'assets/images/general.jpeg', categoryName: 'General'),
    CategoryModel(
        image: 'assets/images/business.jpg', categoryName: 'Business'),
    CategoryModel(
        image: 'assets/images/entertaiment.avif', categoryName: 'Entertainment'),
    CategoryModel(image: 'assets/images/health.avif', categoryName: 'Health'),
    CategoryModel(image: 'assets/images/science.avif', categoryName: 'Science'),
    CategoryModel(image: 'assets/images/sports.jpeg', categoryName: 'Sports'),
    CategoryModel(
        image: 'assets/images/technology.jpeg', categoryName: 'Technology'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return CategoryCardWidget(categoryModel: categories[index]);
        },
      ),
    );
  }
}
