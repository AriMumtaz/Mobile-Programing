import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// step 1
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HalamanUtama(),
    );
  }
}

// step 2
class HalamanUtama extends StatefulWidget {
  const HalamanUtama({super.key});

  @override
  State<HalamanUtama> createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State<HalamanUtama> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications,
                ))
          ],
          backgroundColor: Color.fromARGB(255, 1, 86, 125),
          title: const Center(
            child: Text("06TPLM003 - 201011401920"),
          )),
      body: const Center(
        child: Text(" Kelas: 06TPLM003\n Nama: Ari Mumtaz\n NIM: 201011401920"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.comment,
            ),
            label: "Feed",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
            ),
            label: "Setting",
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Icon(
              Icons.person,
              size: 100,
            ),
            Text("MENU 1"),
            Text("MENU 2"),
            Text("MENU 3"),
          ],
        ),
      ),
    );
  }
}
