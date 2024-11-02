import 'package:flutter/material.dart';

class Add2Page extends StatefulWidget {
  const Add2Page({super.key});

  @override
  State<Add2Page> createState() => _Add2PageState();
}

class _Add2PageState extends State<Add2Page> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Add Product'),
        
        actions: const [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: null,
          ),
        ],
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Nama Produk',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a product name';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Harga',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a price';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  labelText: 'Kategori Produk',
                ),
                value: 'Makanan',
                items: <String>['Makanan', 'Minuman', 'Lainnya']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (value) {
 // Do something with the selected value
                },
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // If the form is valid, then save the data
                    // You can also use `Navigator.push` to navigate to another page
                  }
                },
                child: const Text('Add Product'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
