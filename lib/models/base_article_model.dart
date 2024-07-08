import 'package:news_app/models/article_model.dart';

class BaseArticleModel {
  final String status;
  final int totalResults;
  final List<ArticleModel> articles;

  BaseArticleModel(
      {required this.status,
      required this.totalResults,
      required this.articles});
}
