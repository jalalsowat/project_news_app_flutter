import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.network(
            "https://i.postimg.cc/yYMcXzLY/Elon-Musk-gives-tour-for-President-Barack-Obama.jpg",
            fit: BoxFit.cover,
            width: double.infinity,
            height: 200,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        const Text(
          "  built heigh obama barak ",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          "and here is the description of the news you can place ",
          maxLines: 2,
          style: TextStyle(color: Colors.grey, fontSize: 14),
        )
      ],
    );
  }
}
