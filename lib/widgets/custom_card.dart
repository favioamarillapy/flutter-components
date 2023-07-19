import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            title: Text("Title"),
            subtitle: Text(
                "lorem ipsumlorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsumlorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsumlorem ipsum lorem ipsum lorem ipsum lorem ipsum"),
            leading: Icon(Icons.photo_album),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  child: const Text("Cancel"),
                  onPressed: () {},
                ),
                TextButton(
                  child: const Text("OK"),
                  onPressed: () {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
