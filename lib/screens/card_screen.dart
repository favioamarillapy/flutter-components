import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Card Screen"),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCard(),
            SizedBox(height: 10),
            CustomCardImage(
              title: "EE.UU",
              imageUrl:
                  "https://iso.500px.com/wp-content/uploads/2022/07/Sunset-somewhere-in-Iowa-By-Vath.-Sok-2.jpeg",
            ),
            SizedBox(height: 10),
            CustomCardImage(
              title: "Suecia",
              imageUrl:
                  "https://media.macphun.com/img/uploads/macphun/blog/2063/_1.jpeg?q=75&w=1710&h=906&resize=cover",
            ),
            SizedBox(height: 10),
            CustomCardImage(
              title: "Patagonia",
              imageUrl:
                  "https://switzerland-tour.com/storage/media/4-ForArticles/swiss-mountains.jpg",
            ),
          ],
        ));
  }
}
