import 'package:flutter/material.dart';
import 'package:news_app/widgets/category_card.dart';

import '../widgets/categories_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text(
                "News ",
                style: TextStyle(color: Colors.black),
              ),
              Text(
                "Cloud",
                style: TextStyle(color: Color.fromARGB(255, 216, 196, 64)),
              ),
            ],
          ),
        ),
        body: const CategoriesListView());
  }
}