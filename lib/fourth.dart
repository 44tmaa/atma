import 'dart:io';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  const supabaseUrl = 'https://dzrvmkujekxnqnmvbnml.supabase.co';
  const supabaseKey =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImR6cnZta3VqZWt4bnFubXZibm1sIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzA5NjUxMjMsImV4cCI6MjA0NjU0MTEyM30.1zo81868FmMmaETcdwASn12xuJPdXXtt9PvKmOWlrqM';

  await Supabase.initialize(url: supabaseUrl, anonKey: supabaseKey);
  runApp(const MyApp());
}

final supabase = Supabase.instance.client;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FirstPage',
      initialRoute: '/',
    );
  }
}

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _hargaController = TextEditingController();
  final TextEditingController _quantityController = TextEditingController();

  Future<List<dynamic>> fetchData() async {
    final response = await supabase.from('food').select('*');
    return response as List<dynamic>;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ADD Data",
      theme: ThemeData(primaryColor: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),
          title: const Text('Add Data'),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: Icon(Icons.person),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Form(
                child: Column(
                  children: [
                    TextField(
                      controller: _nameController,
                      decoration: const InputDecoration(labelText: 'Name'),
                    ),
                    TextField(
                      controller: _descriptionController,
                      decoration:
                          const InputDecoration(labelText: 'Description'),
                    ),
                    TextField(
                      controller: _hargaController,
                      decoration: const InputDecoration(labelText: 'Price'),
                    ),
                    TextField(
                      controller: _quantityController,
                      decoration: const InputDecoration(labelText: 'Quantity'),
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        final name = _nameController.text;
                        final description = _descriptionController.text;
                        final harga = _hargaController.text;
                        final quantity = _quantityController.text;

                        await supabase.from('food').insert({
                          'name': name,
                          'description': description,
                          'harga': harga,
                          'quantity': quantity,
                        });

                        setState(() {
                          _nameController.clear();
                          _descriptionController.clear();
                          _hargaController.clear();
                          _quantityController.clear();
                        });
                      },
                      child: const Text('Submit'),
                    ),
                    FutureBuilder<List<dynamic>>(
                      future: fetchData(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const CircularProgressIndicator();
                        } else if (snapshot.hasError) {
                          return Text('Error: ${snapshot.error}');
                        } else if (!snapshot.hasData ||
                            snapshot.data!.isEmpty) {
                          return const Text('No Data Found');
                        } else {
                          final data = snapshot.data!;
                          return DataTable(
                            columns: const <DataColumn>[
                              DataColumn(label: Text('Name')),
                              DataColumn(label: Text('Description')),
                              DataColumn(label: Text('Harga')),
                              DataColumn(label: Text('Quantity')),
                              DataColumn(label: Text('Action')),
                            ],
                            rows: data.map((item) {
                              return DataRow(cells: [
                                DataCell(Text(item['name'])),
                                DataCell(Text(item['description'])),
                                DataCell(Text(item['harga'].toString())),
                                DataCell(Text(item['quantity'].toString())),
                                DataCell(IconButton(
                                  icon: Icon(Icons.delete),
                                  onPressed: () async {
                                    await supabase
                                        .from('food')
                                        .delete()
                                        .eq('id', item['id']);

                                    setState(() {
                                      _nameController.clear();
                                      _descriptionController.clear();
                                      _hargaController.clear();
                                      _quantityController.clear();
                                    });
                                  },
                                )),
                              ]);
                            }).toList(),
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}