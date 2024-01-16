import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news/models/article_model.dart';
import 'package:news/services/news_services.dart';
import 'package:news/widgets/news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  NewsListViewBuilder({super.key});

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  // var future;
  // @override
  // void initState() {
  //   future = NewsService(Dio()).getNews();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticalModel>>(
        future:  NewsService(Dio()).getNews(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListViwe(articles: snapshot.data!);
          } else if (snapshot.hasError) {
            return SliverToBoxAdapter(
                child:
                    Center(child: Text('opps there was an error , try agin')));
          } else {
            return SliverToBoxAdapter(
                child: Center(child: CircularProgressIndicator()));
          }
        });

    // isloading
    // ?
    // : articles.isNotEmpty
    //   ? NewsListViwe(articles: articles)
    //  : SliverToBoxAdapter(
    //    child:
    //       Center(child: Text('opps there was an error , tryagin')));
  }
}
