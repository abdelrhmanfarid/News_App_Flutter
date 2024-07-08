import 'package:flutter/material.dart';
import 'package:news_app/components/news_title.dart';

import '../models/article_model.dart';

class NewsListView extends StatefulWidget {
   List<ArticleModel> articles = [];

   NewsListView({super.key,required this.articles});

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: widget.articles.length,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 22),
            child: NewsTitle(
              articleModel: widget.articles[index],
            ),
          );
        },
      ),
    );
  }
}


