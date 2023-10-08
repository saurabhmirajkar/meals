import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';

class MealtDetailScreen extends StatelessWidget {
  const MealtDetailScreen({
    super.key,
    required this.meal,
  });

  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: Image.network(
        meal.imageUrl,
        fit: BoxFit.cover,
        height: 300,
        width: double.infinity,
      ),
    );
  }
}
