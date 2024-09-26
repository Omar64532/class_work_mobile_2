import 'package:flutter/material.dart';
import 'DetailsScreen.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> recipes = [
    {
      'title': 'Mac and Cheese',
      'details': 'Ingredients: Macaroni, Cheese, Milk, Butter\nInstructions: Boil macaroni, mix with cheese and milk.'
    },
    {
      'title': 'Chicken Fried Rice',
      'details': 'Ingredients: Chicken, Rice, Soy Sauce, Vegetables\nInstructions: Stir-fry chicken, add rice and soy sauce.'
    },
    {
      'title': 'Cajun Shrimp Alfredo',
      'details': 'Ingredients: Shrimp, Fettuccine, Alfredo Sauce, Cajun Seasoning\nInstructions: Cook shrimp, mix with fettuccine and sauce.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe Book'),
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(recipes[index]['title']!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(
                    title: recipes[index]['title']!,
                    details: recipes[index]['details']!,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
