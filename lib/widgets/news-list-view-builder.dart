import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/models/article-model.dart';
import 'package:newsapp/services/news-services.dart';
import 'package:newsapp/views/news-list-view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({
    super.key, required this.category,
  });
final String category;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  @override
  void initState() {
    super.initState();
    future = NewsServices(Dio()).getTopHeadlineNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListView(articles: snapshot.data ?? []);
          } else if (snapshot.hasError) {
            return const SliverFillRemaining(
                child: Center(
              child: Text('Opps There was Error'),
            ));
          } else {
            return const SliverFillRemaining(
                child: Center(child: CircularProgressIndicator()));
          }
        });
  }
}
