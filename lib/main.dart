import 'package:flutter/material.dart';
import 'manual_add.dart';
import 'search_online.dart';
import 'library.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Library App'),
        ),
        body: Center(
          child: currentIndex == 0 ? SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    
                  },
                  child: const Text('Scan barcode'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                          const SearchOnline(),
                      )
                    );
                  },
                  child: const Text('Search online'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                          const ManualAdd(),
                      )
                    );
                  },
                  child: const Text('Manual add'),
                ),
              ],
            ),
          ) : Image.asset('images/a.jpg'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'Library',
              icon: Icon(Icons.library_books),
            ),
          ],
          currentIndex: currentIndex,
          onTap: (int index){
            setState(() {
              currentIndex = index;
            });
          },
        ),
      );
  }
}