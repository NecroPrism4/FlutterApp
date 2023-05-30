import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/ui/second_page.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nav Drawer"),
        centerTitle: true,
        elevation: defaultTargetPlatform == TargetPlatform.android ? 13.0 : 0.0,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: const CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("S"),
              ),
              accountName: const Text(
                "Samanta Galvez",
                style: TextStyle(color: Colors.white),
              ),
              accountEmail: const Text("samantaggalvez@gmail.com",
                  style: TextStyle(color: Colors.white)),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.grey[100],
                  child: const Text("S"),
                ),
                CircleAvatar(
                  backgroundColor: Colors.grey[100],
                  child: const Text("C"),
                )
              ],
            ),
            ListTile(
                title: const Text("Pagina 1"),
                trailing: const Icon(Icons.assessment),
                onTap: () => _onTapItemDrawer(context, "First page")),
            ListTile(
                title: const Text("Pagina 2"),
                trailing: const Icon(Icons.favorite),
                onTap: () => _onTapItemDrawer(context, "Second page")),
            const Divider(),
            ListTile(
                title: const Text("Pagina 3"),
                trailing: const Icon(Icons.send),
                onTap: () => _onTapItemDrawer(context, "Sixth page")),
            ListTile(
                title: const Text("Pagina 4"),
                trailing: const Icon(Icons.forward),
                onTap: () => _onTapItemDrawer(context, "Fourth page")),
            ListTile(
                title: const Text("Pagina 5"),
                trailing: const Icon(Icons.camera_alt),
                onTap: () => _onTapItemDrawer(context, "Fifth page")),
            ListTile(
                title: const Text("Pagina 6"),
                trailing: const Icon(Icons.settings),
                onTap: () => _onTapItemDrawer(context, "Third page")),
          ],
        ),
      ),
      body: const Center(
        child: Text(
          "Hello Nav Drawer !",
          style: TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }

  void _onTapItemDrawer(_, String title) {
    Navigator.push(_, MaterialPageRoute(builder: (BuildContext context) {
      return SecondPage(
        title: title,
      );
    }));
  }
}
