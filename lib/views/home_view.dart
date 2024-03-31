import 'package:flutter/material.dart';
import 'package:news_app/widgets/category_card.dart';

import '../widgets/categories_list_view.dart';
import '../widgets/news_list_view.dart';
import '../widgets/news_tile.dart';

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
        body: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: CustomScrollView(
              physics: BouncingScrollPhysics(),
              slivers: [
                SliverToBoxAdapter(child: CategoriesListView()),
                SliverToBoxAdapter(
                    child: SizedBox(
                  height: 20,
                )),
                SliverToBoxAdapter(child: NewsListView()),
              ],
            )
            // Column(
            //   children: const [
            //     CategoriesListView(),
            //     SizedBox(
            //       height: 20,
            //     ),
            //     Expanded(child: NewsListView())
            //   ],
            // ),
            )); //CategoriesListView(),);
  }
}
