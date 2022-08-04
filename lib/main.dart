import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: CustomScrollView(
        slivers: [
          // *********************** Sliver app bar start
          SliverAppBar(
            backgroundColor: Colors.deepPurple,
            leading: Icon(Icons.menu),
            //title: Text("Sliver Appbar"),
            expandedHeight: 300,
            floating: false,
            // pinned only used sliver app ber 
            // https://api.flutter.dev/flutter/material/SliverAppBar/pinned.html
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: Colors.pink,
              ),
              title: Text("Sliber appbar"),
              centerTitle: true,
            ),
            // *********************** Sliver app bar end
          ),
          // *********************** Sliver item start
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Container(
                  height: 300,
                  color: Colors.deepPurple,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Container(
                  height: 300,
                  color: Color.fromARGB(255, 58, 127, 183),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Container(
                  height: 300,
                  color: Color.fromARGB(255, 58, 183, 96),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Container(
                  height: 300,
                  color: Color.fromARGB(255, 183, 58, 89),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
