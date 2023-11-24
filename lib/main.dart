import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Hello World';

    List<String> names = [
      "Nathannael Andrew Caingles",
      "Letecia Cainles",
      "Rodulfo Caingles",
      "Paul Aldrin Caingles",
      "Rod Walter Caingles",
    ];

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
          leading: IconButton(
            onPressed: null,
            icon: Icon(Icons.public),
          ),
        ),
        body: ListView.builder(
          itemCount: names.length,
          itemBuilder: (BuildContext context, int index) {
            String name = names[index];
            int letterCount = name.replaceAll(" ", "").length;

            return ListTile(
              leading: Icon(Icons.manage_accounts),
              title: Text(name),
              subtitle: Text("$letterCount Letters"),
            );
          },
        ),
      ),
    );
  }
}
