import 'package:flutter/material.dart';
import 'fourth.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FirstPage',
      initialRoute: '/',
      routes: {
        '/plus': (context) => const Add2Page(),
      },
    );
  }
}

class Add2Page extends StatefulWidget {
  const Add2Page({super.key});

  @override
  State<Add2Page> createState() => _Add2PageState();
}

class _Add2PageState extends State<Add2Page> {
  @override
  Widget build(BuildContext context) {
    // Get the screen dimensions
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Food Table'),
        actions: const [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: null,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0), // Reduced padding
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/plusadd');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: const EdgeInsets.symmetric(
                    horizontal: 24.0, vertical: 12.0), // Adjusted padding
                textStyle: const TextStyle(
                    fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              child: const Text('Add Data +'),
            ),
            const SizedBox(height: 10.0), // Reduced space
            SingleChildScrollView( // Allow scrolling if the content is too large
              scrollDirection: Axis.horizontal, // Enable horizontal scrolling
              child: DataTable(
                columns: const [
                  DataColumn(label: Text('Foto')),
                  DataColumn(label: Text('Nama Produk')),
                  DataColumn(label: Text('Harga')),
                  DataColumn(label: Text('Aksi')),
                ],
                rows: [
                  DataRow(
                    cells: [
                      DataCell(
                        Image.asset(
                          'assets/mie.jpg',
                          width: 30, // Increased size for better visibility
                          height: 30,
                        ),
                      ),
                      DataCell(
                        SizedBox(
                          width: 100, // Set a fixed width for the text
                          child: Text(
                            'Mie',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ),
                      ),
                      const DataCell(Text('Rp.50.000,00')),
                      DataCell(
                        IconButton(
                          icon: const Icon(Icons.delete, color: Colors.red),
                          onPressed: () {
                            // Implement delete action
                          },
                        ),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(
                        Image.asset(
                          'assets/TehBotol.jpg',
                          width: 30,
                          height: 30,
                        ),
                      ),
                      DataCell(
                        SizedBox(
                          width: 100, // Set a fixed width for the text
                          child: Text(
                            'Teh Botol',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ),
                      ),
                      const DataCell(Text('Rp.4.000,00')),
                      DataCell(
                        IconButton(
                          icon: const Icon(Icons.delete, color: Colors.red),
                          onPressed: () {
                            // Implement delete action
                          },
                        ),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(
                        Image.asset(
                          'assets/Burger.jpg',
                          width: 30,
                          height: 30,
                        ),
                      ),
                      DataCell(
                        SizedBox(
                          width: 100, // Set a fixed width for the text
                          child: Text(
                            'Burger Small',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ),
                      ),
                      const DataCell(Text('Rp.35.000,00')),
                      DataCell(
                        IconButton(
                          icon: const Icon(Icons.delete, color: Colors.red),
                          onPressed: () {
                            // Implement delete action
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}