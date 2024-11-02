import 'package:flutter/material.dart';
import 'fifth.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FirstPage',
      initialRoute: '/',
      routes: {
        '/plusadd': (context) => const Add2Page(),
      },
    );
  }
}

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context,'/plusadd');
              },
              child: const Text('Add Data +'),
              style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll<Color>(Color.fromARGB(255, 245, 53, 133))
                  ),
              
            ),
            const SizedBox(height: 16),
            const Text('Foto', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
          
            DataTable(
              columns: const [
                DataColumn(label: Text('Foto')),
                DataColumn(label: Text('Nama')),
                DataColumn(label: Text('Harga')),
                DataColumn(label: Text('Aksi')),
              ],
              rows: [
                DataRow(
                  cells: [
                    DataCell(
                      Image.asset('assets/BURGER.jpg'),
                    ),
                    const DataCell(Text('Burger King Medium',style: TextStyle(fontSize: 10))),
                    const DataCell(Text('Rp. 50.000,00')),
                    DataCell(
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.delete),
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      Image.asset('assets/TEH.jpg'),
                    ),
                    const DataCell(Text('Teh Botol')),
                    const DataCell(Text('Rp. 4.000,00')),
                    DataCell(
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.delete),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}