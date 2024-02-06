import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget > createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Flutter Image Viewer",
              style: TextStyle(
                  color: Colors.white
              ),
            ),
            leading: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            actions: const [Icon(
              Icons.more_vert,
              color: Colors.white,
            )],
            backgroundColor: Colors.blue,
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: (){},
            child: Icon(Icons.change_circle),
          ),
          body: Center(
            child: Image.network("https://picsum.photos/250?image=4"),
          )
        )
    );
  }
}
