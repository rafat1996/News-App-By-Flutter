import 'package:flutter/material.dart';
import 'package:newsapp/widgets/categories-list-widget.dart';
import 'package:newsapp/widgets/news-list-view-builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: const Text(
            'News App',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: CategoriesListWidget(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 32,
                ),
              ),
              NewsListViewBuilder(category: 'general',),
            ],
          ),
        ));
  }
}
