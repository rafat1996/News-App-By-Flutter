import 'package:flutter/material.dart';
import 'package:newsapp/models/article-model.dart';
import 'package:newsapp/widgets/news-tile-widget.dart';

class NewsListView extends StatelessWidget {
  final List<ArticleModel> articles;

  const NewsListView({super.key, required this.articles});
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: articles.length,
            (context, index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 22),
        child: NewsTileWidget(
          articleModel: articles[index],
        ),
      );
    }));
  }
}
