import 'package:flutter/material.dart';
import 'fourth.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'splash.dart';
import 'second.dart';
import 'third.dart';
import 'fifth.dart';

Future<void> main() async {
  const url = 'https://dzrvmkujekxnqnmvbnml.supabase.co';
  const anonKey =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImR6cnZta3VqZWt4bnFubXZibm1sIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzA5NjUxMjMsImV4cCI6MjA0NjU0MTEyM30.1zo81868FmMmaETcdwASn12xuJPdXXtt9PvKmOWlrqM';

  await Supabase.initialize(url: url, anonKey: anonKey);
  runApp(const MyApp());
}

final supabase = Supabase.instance.client;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FirstPage',
      initialRoute: '/',
      routes: {
        '/': (context) =>  SplashScreen(),
        '/main': (context) => const MyHomePage(),
        '/cart': (context) => const SecondPage(),
        '/add': (context) => const CartScreen(),
        '/plus': (context) => const Add2Page(),
        '/plusadd': (context) => const AddPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isHovering = false;
  int _selectedIndex = 0;

  void _onItemTapped(int index, BuildContext context) {
    setState(() {
      _selectedIndex = index;
    });
    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/main');
        break;
      case 1:
        Navigator.pushNamed(context, '/cart');
        break;
      case 2:
        Navigator.pushNamed(context, '/add');
        break;
      case 3:
        Navigator.pushNamed(context, '/plus');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(screenWidth * 0.04), // Responsive padding
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Fixed content above the scrolling area
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MouseRegion(
                  onEnter: (_) => setState(() => _isHovering = true),
                  onExit: (_) => setState(() => _isHovering = false),
                  child: Container(
                    width: screenWidth * 0.25, // Responsive width
                    height: screenHeight * 0.15, // Responsive height
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: _isHovering ? Colors.blue : Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Image.asset('assets/Burger.jpg',
                              height: 40), // Responsive image height
                          const Text('All'),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: screenWidth * 0.25,
                  height: screenHeight * 0.15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.asset('assets/Burger.jpg',
                            height: 40, fit: BoxFit.cover),
                        const Text('Makanan'),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: screenWidth * 0.25,
                  height: screenHeight * 0.15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.asset('assets/Tehbotol.jpg',
                            height: 40, fit: BoxFit.cover),
                        const Text('Minuman'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Text(
              'All Food',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            // Scrollable content starts here
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Food items grid
                    for (var i = 0;
                        i < 5;
                        i++) // Loop to create multiple rows of food items
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          for (var j = 0;
                              j < 2;
                              j++) // Loop to create two food items per row
                            Center(
                              child: Container(
                                width: screenWidth * 0.4, // Responsive width
                                height:
                                    screenHeight * 0.15, // Responsive height
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color.fromARGB(
                                              255, 130, 122, 122)
                                          .withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: const Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/Burger.jpg',
                                        height: 60), // Smaller image height
                                    const SizedBox(height: 5),
                                    Column(
                                      children: [
                                        const Row(
                                          children: [
                                            Text(
                                              '  Burger King Medium',
                                              style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Row(
                                              children: [
                                                SizedBox(height: 5),
                                                Text(
                                                  '    Rp. 50.000,00',
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            // Adjusted ElevatedButton to have fixed width
                                            SizedBox(
                                              width:
                                                  40, // Fixed width for the button
                                              child: ElevatedButton.icon(
                                                style: const ButtonStyle(
                                                  backgroundColor:
                                                      WidgetStatePropertyAll(
                                                          Colors.green),
                                                  padding: WidgetStatePropertyAll(
                                                      EdgeInsets.all(
                                                          0)), // Remove padding to keep button compact
                                                ),
                                                label:
                                                    const Text(''), // No text
                                                onPressed: () {
                                                  _onItemTapped(2, context);
                                                },
                                                icon: const Icon(
                                                  Icons.add,
                                                  color: Colors.white,
                                                  size: 16, // Smaller icon size
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                        height:
                                            10), // Add space at the bottom of each item
                                  ],
                                ),
                              ),
                            ),
                        ],
                      ),
                    const SizedBox(height: 10), // Add space between rows
                    // Add more items here as needed
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 5.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                icon: const Icon(Icons.home),
                onPressed: () => _onItemTapped(0, context)),
            IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: () => _onItemTapped(2, context)),
            IconButton(
                icon: const Icon(Icons.post_add),
                onPressed: () => _onItemTapped(3, context)),
          ],
        ),
      ),
    );
  }
}