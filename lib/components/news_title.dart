import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsTitle extends StatelessWidget {
  const NewsTitle({super.key, required this.articleModel});

  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              articleModel.image??'https://substackcdn.com/image/fetch/f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fbucketeer-e05bbc84-baa3-437e-9518-adb32be77984.s3.amazonaws.com%2Fpublic%2Fimages%2Ff397e7df-2408-4fa6-a59f-a4605fe88170_1000x600.jpeg',
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            )),
        const SizedBox(
          height: 12,
        ),
         Text(
          articleModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
         Text(
          articleModel.subTitle??'',
          maxLines: 2,
          style: TextStyle(color: Colors.grey, fontSize: 14),
        )
      ],
    );
  }
}
