import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Avatar Screen"),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundColor: Colors.indigo[900],
              foregroundColor: Colors.white,
              child: const Text("FA"),
            ),
          )
        ],
      ),
      body: Center(
        child: CircleAvatar(
          maxRadius: 100,
          backgroundImage: const NetworkImage(
              "https://scontent.fasu11-1.fna.fbcdn.net/v/t39.30808-1/313991432_1566225937160926_5527145247371560145_n.jpg?stp=dst-jpg_p160x160&_nc_cat=102&cb=99be929b-59f725be&ccb=1-7&_nc_sid=7206a8&_nc_ohc=I8-o_-Mio1cAX-96sRG&_nc_ht=scontent.fasu11-1.fna&oh=00_AfDYmyqbC2O_NuL8yNQbC-g31UTF3HsxbkEX5-NqjF0MlA&oe=64BD8182"),
          backgroundColor: Colors.indigo[900],
          foregroundColor: Colors.white,
        ),
      ),
    );
  }
}
