import 'package:flutter/material.dart';
import 'package:newsapp/models/category-model.dart';
import 'package:newsapp/views/category-view.dart';

class CategoryCardWidget extends StatelessWidget {
  const CategoryCardWidget({super.key, required this.categoryModel});
  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>  CategoryView(category: categoryModel.categoryName,),
            ));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 14),
        child: Container(
          height: 80,
          width: 140,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              image: DecorationImage(
                  image: AssetImage(categoryModel.image), fit: BoxFit.fill)),
          child: Center(
              child: Card(
            color: Colors.white.withOpacity(0.3),
            child: Text(
              categoryModel.categoryName,
              style: const TextStyle(
                  fontSize: 15,
                  color: Color.fromARGB(255, 207, 195, 195),
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Cairo'),
            ),
          )),
        ),
      ),
    );
  }
}
