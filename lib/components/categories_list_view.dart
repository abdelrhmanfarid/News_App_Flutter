import 'package:flutter/material.dart';
import 'package:news_app/components/category_card.dart';
import 'package:news_app/models/category_model.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  final List<CategoryModel> categories = const [
    CategoryModel(name: 'Business', image: 'assets/business.jpg'),
    CategoryModel(name: 'Entertainment', image: 'assets/entertaiment.avif'),
    CategoryModel(name: 'General', image: 'assets/general.avif'),
    CategoryModel(name: 'Health', image: 'assets/health.avif'),
    CategoryModel(name: 'Science', image: 'assets/science.avif'),
    CategoryModel(name: 'Sport', image: 'assets/sports.avif'),
    CategoryModel(name: 'Technology', image: 'assets/technology.jpeg'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return  CategoryCard(category: categories[index],);
          }),
    );
  }
}
