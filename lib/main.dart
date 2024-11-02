
import 'package:flutter/material.dart';
import 'fourth.dart';
import 'second.dart';
import 'third.dart';
import 'fifth.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FirstPage',
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/cart': (context) => const SecondPage(),
        '/add': (context) => const CartScreen(),
        '/plus': (context) => const AddPage(),
        '/plusadd': (context) => const Add2Page(),
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
        Navigator.pushNamed(context, '/');
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
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        actions: const [
          Icon(Icons.person),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
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
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: _isHovering ? Colors.blue : Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/Burger.jpg',
                          ),
                          const Text('All'),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Image.asset('assets/Burger.jpg', fit: BoxFit.cover),
                        const Text('Makanan'),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Image.asset('assets/TEH.jpg', fit: BoxFit.cover),
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
            // This is the message before the scrollable content
            // Scrollable content starts here
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Center(
                          child: Container(
                            width: 175,
                            height: 175,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      const Color.fromARGB(255, 130, 122, 122)
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
                                Image.asset('assets/Burger.jpg'),
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
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            const SizedBox(height: 1),
                                            ElevatedButton.icon(
                                              style: const ButtonStyle(
                                                backgroundColor:
                                                    WidgetStatePropertyAll(
                                                        Color.fromARGB(255, 231, 80, 151)),
                                              ),
                                              label: const Text(''),
                                              onPressed: () {
                                                _onItemTapped(2, context);
                                              },
                                              icon: const Icon(
                                                Icons.add,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Center(
                          child: Container(
                            width: 175,
                            height: 175,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      const Color.fromARGB(255, 130, 122, 122)
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
                                Image.asset('assets/Burger.jpg'),
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
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            const SizedBox(height: 1),
                                            ElevatedButton.icon(
                                              style: const ButtonStyle(
                                                backgroundColor:
                                                    WidgetStatePropertyAll(
                                                        Color.fromARGB(255, 231, 80, 151)),
                                              ),
                                              label: const Text(''),
                                              onPressed: () {
                                                _onItemTapped(2, context);
                                              },
                                              icon: const Icon(
                                                Icons.add,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Center(
                          child: Container(
                            width: 175,
                            height: 175,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      const Color.fromARGB(255, 130, 122, 122)
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
                                Image.asset('assets/Burger.jpg'),
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
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            const SizedBox(height: 1),
                                            ElevatedButton.icon(
                                              style: const ButtonStyle(
                                                backgroundColor:
                                                    WidgetStatePropertyAll(
                                                        Color.fromARGB(255, 231, 80, 151)),
                                              ),
                                              label: const Text(''),
                                              onPressed: () {
                                                _onItemTapped(2, context);
                                              },
                                              icon: const Icon(
                                                Icons.add,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Center(
                          child: Container(
                            width: 175,
                            height: 175,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      const Color.fromARGB(255, 130, 122, 122)
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
                                Image.asset('assets/Burger.jpg'),
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
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            const SizedBox(height: 1),
                                            ElevatedButton.icon(
                                              style: const ButtonStyle(
                                                backgroundColor:
                                                    WidgetStatePropertyAll(
                                                        Color.fromARGB(255, 231, 80, 151)),
                                              ),
                                              label: const Text(''),
                                              onPressed: () {
                                                _onItemTapped(2, context);
                                              },
                                              icon: const Icon(
                                                Icons.add,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Center(
                          child: Container(
                            width: 175,
                            height: 175,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      const Color.fromARGB(255, 130, 122, 122)
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
                                Image.asset('assets/Burger.jpg'),
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
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            const SizedBox(height: 1),
                                            ElevatedButton.icon(
                                              style: const ButtonStyle(
                                                backgroundColor:
                                                    WidgetStatePropertyAll(
                                                        Color.fromARGB(255, 231, 80, 151)),
                                              ),
                                              label: const Text(''),
                                              onPressed: () {
                                                _onItemTapped(2, context);
                                              },
                                              icon: const Icon(
                                                Icons.add,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Center(
                          child: Container(
                            width: 175,
                            height: 175,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      const Color.fromARGB(255, 130, 122, 122)
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
                                Image.asset('assets/Burger.jpg'),
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
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            const SizedBox(height: 1),
                                            ElevatedButton.icon(
                                              style: const ButtonStyle(
                                                backgroundColor:
                                                    WidgetStatePropertyAll(
                                                        Color.fromARGB(255, 231, 80, 151)),
                                              ),
                                              label: const Text(''),
                                              onPressed: () {
                                                _onItemTapped(2, context);
                                              },
                                              icon: const Icon(
                                                Icons.add,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Center(
                          child: Container(
                            width: 175,
                            height: 175,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      const Color.fromARGB(255, 130, 122, 122)
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
                                Image.asset('assets/Burger.jpg'),
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
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            const SizedBox(height: 1),
                                            ElevatedButton.icon(
                                              style: const ButtonStyle(
                                                backgroundColor:
                                                    WidgetStatePropertyAll(
                                                        Color.fromARGB(255, 231, 80, 151)),
                                              ),
                                              label: const Text(''),
                                              onPressed: () {
                                                _onItemTapped(2, context);
                                              },
                                              icon: const Icon(
                                                Icons.add,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Center(
                          child: Container(
                            width: 175,
                            height: 175,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      const Color.fromARGB(255, 130, 122, 122)
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
                                Image.asset('assets/Burger.jpg'),
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
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            const SizedBox(height: 1),
                                            ElevatedButton.icon(
                                              style: const ButtonStyle(
                                                backgroundColor:
                                                    WidgetStatePropertyAll(
                                                        Color.fromARGB(255, 231, 80, 151)),
                                              ),
                                              label: const Text(''),
                                              onPressed: () {
                                                _onItemTapped(2, context);
                                              },
                                              icon: const Icon(
                                                Icons.add,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10,),
                  
            ],
                ),
              ),
            ),
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