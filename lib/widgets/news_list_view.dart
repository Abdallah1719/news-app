import 'package:flutter/material.dart';
import 'package:news/models/article_model.dart';
import 'package:news/widgets/news_tile.dart';

class NewsListViwe extends StatelessWidget {
  List<ArticalModel> articles;
  NewsListViwe({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: articles.length,
          (context, index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 22),
          child: NewsTile(
            articalModel: articles[index],
          ),
        );
      }),
    );
  }
}
