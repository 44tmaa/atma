import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
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
    return MaterialApp(
      title: 'SecondPage',
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.menu),
          actions: const [
            Icon(Icons.person),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                child: Image.asset('assets/Tokped.jpg'),
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset('assets/BURGER.jpg', height: 50),
                    Image.asset('assets/BURGER.jpg', height: 50),
                    Image.asset('assets/BURGER.jpg', height: 50),
                    Image.asset('assets/BURGER.jpg', height: 50),
                    Image.asset('assets/BURGER.jpg', height: 50),
                    Image.asset('assets/BURGER.jpg', height: 50),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset('assets/BURGER.jpg', height: 50),
                    Image.asset('assets/BURGER.jpg', height: 50),
                    Image.asset('assets/BURGER.jpg', height: 50),
                    Image.asset('assets/BURGER.jpg', height: 50),
                    Image.asset('assets/BURGER.jpg', height: 50),
                    Image.asset('assets/BURGER.jpg', height: 50),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'All Food',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              //For Row And Column
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Center(
                    child: Container(
                      width: 400,
                      height: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/BURGER.jpg'),
                          const SizedBox(
                            height: 16,
                          ),
                          const Text(
                            'Burger King Medium',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            'Rp. 50.000,00',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 2),
                          ElevatedButton.icon(
                            onPressed: () {
                              // Add your button functionality here
                            },
                            icon: const Icon(Icons.add),
                            label: const Text('Add to Cart'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: 400,
                      height: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/BURGER.jpg'),
                          const SizedBox(
                            height: 16,
                          ),
                          const Text(
                            'Burger King Medium',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            'Rp. 50.000,00',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 2),
                          ElevatedButton.icon(
                            onPressed: () {
                              // Add your button functionality here
                            },
                            icon: const Icon(Icons.add),
                            label: const Text('Add to Cart'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Center(
                    child: Container(
                      width: 400,
                      height: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/BURGER.jpg'),
                          const SizedBox(
                            height: 16,
                          ),
                          const Text(
                            'Burger King Medium',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            'Rp. 50.000,00',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 2),
                          ElevatedButton.icon(
                            onPressed: () {
                              // Add your button functionality here
                            },
                            icon: const Icon(Icons.add),
                            label: const Text('Add to Cart'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: 400,
                      height: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/BURGER.jpg'),
                          const SizedBox(
                            height: 16,
                          ),
                          const Text(
                            'Burger King Medium',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            'Rp. 50.000,00',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 2),
                          ElevatedButton.icon(
                            onPressed: () {
                              // Add your button functionality here
                            },
                            icon: const Icon(Icons.add),
                            label: const Text('Add to Cart'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Center(
                    child: Container(
                      width: 400,
                      height: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/BURGER.jpg'),
                          const SizedBox(
                            height: 16,
                          ),
                          const Text(
                            'Burger King Medium',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            'Rp. 50.000,00',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 2),
                          ElevatedButton.icon(
                            onPressed: () {
                              // Add your button functionality here
                            },
                            icon: const Icon(Icons.add),
                            label: const Text('Add to Cart'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: 400,
                      height: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/BURGER.jpg'),
                          const SizedBox(
                            height: 16,
                          ),
                          const Text(
                            'Burger King Medium',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            'Rp. 50.000,00',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 2),
                          ElevatedButton.icon(
                            onPressed: () {
                              // Add your button functionality here
                            },
                            icon: const Icon(Icons.add),
                            label: const Text('Add to Cart'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
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
                onPressed: () => _onItemTapped(1, context)),
            IconButton(
                icon: const Icon(Icons.post_add),
                onPressed: () => _onItemTapped(3, context)),
          ],
        ),
      ),
      ),
    );
  }
}