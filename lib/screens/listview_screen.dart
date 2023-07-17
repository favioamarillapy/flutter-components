import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final options = [
      "Opcion 1",
      "Opcion 2",
      "Opcion 3",
      "Opcion 4",
      "Opcion 5",
      "Opcion 6",
      "Opcion 7",
      "Opcion 8",
      "Opcion 9",
      "Opcion 10"
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Listview Screen"),
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(options[index]),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {
            print(options[index]);
          },
        ),
        separatorBuilder: (context, index) => const Divider(),
      ),
    );
  }
}
