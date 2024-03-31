import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Container(
          height: 85,
          width: 100,
          decoration: BoxDecoration(
              image: const DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/entertaiment.avif"),
              ),
              color: Colors.amberAccent,
              borderRadius: BorderRadius.circular(12)),
          child: const Center(
              child: Text("Sports",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)))),
    );
  }
}
