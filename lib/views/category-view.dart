import 'package:flutter/material.dart';
import 'package:newsapp/widgets/news-list-view-builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final String category;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            NewsListViewBuilder(category: category,)
          ],
        ),
      ),
    );
  }
}
