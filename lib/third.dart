import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // Import the intl package for number formatting

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int _burgerKingMediumCount = 1;
  int _tehBotolCount = 2;
  int _burgerKingSmallCount = 1;

  // Prices of the items
  final double _burgerKingMediumPrice = 50000.00;
  final double _tehBotolPrice = 4000.00;
  final double _burgerKingSmallPrice = 35000.00;

  double get totalBelanja {
    return (_burgerKingMediumCount * _burgerKingMediumPrice) +
           (_tehBotolCount * _tehBotolPrice) +
           (_burgerKingSmallCount * _burgerKingSmallPrice);
  }

  double get ppn {
    return totalBelanja * 0.11; // 11% PPN
  }

  double get totalPembayaran {
    return totalBelanja + ppn;
  }

  String formatCurrency(double amount) {
    // Format the amount to Indonesian currency style
    final formatter = NumberFormat.currency(
      locale: 'id_ID', // Indonesian locale
      symbol: 'Rp ',
      decimalDigits: 2,
    );
    return formatter.format(amount).replaceAll('.', ','); // Replace '.' with ',' for Indonesian style
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text('Cart'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(Icons.person),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CartItem(
                image: 'assets/Burger.jpg',
                title: 'Burger King Medium',
                price: formatCurrency(_burgerKingMediumPrice),
                count: _burgerKingMediumCount,
                onIncrement: () {
                  setState(() {
                    _burgerKingMediumCount++;
                  });
                },
                onDecrement: () {
                  setState(() {
                    if (_burgerKingMediumCount > 1) {
                      _burgerKingMediumCount--;
                    }
                  });
                },
              ),
              const SizedBox(height: 16.0),
              CartItem(
                image: 'assets/Tehbotol.jpg',
                title: 'Teh Botol',
                price: formatCurrency(_tehBotolPrice),
                count: _tehBotolCount,
                onIncrement: () {
                  setState(() {
                    _tehBotolCount++;
                  });
                },
                onDecrement: () {
                  setState(() {
                    if (_tehBotolCount > 1) {
                      _tehBotolCount--;
                    }
                  });
                },
              ),
              const SizedBox(height: 16.0),
              CartItem(
                image: 'assets/Burger.jpg',
                title: 'Burger King Small',
                price: formatCurrency(_burgerKingSmallPrice),
                count: _burgerKingSmallCount,
                onIncrement: () {
                  setState(() {
                    _burgerKingSmallCount++;
                  });
                },
                onDecrement: () {
                  setState(() {
                    if (_burgerKingSmallCount > 1) {
                      _burgerKingSmallCount--;
                    }
                  });
                },
              ),
              const SizedBox(height: 24.0),
              const Text(
                'Ringkasan Belanja',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('PPN 11%'),
                  Text(formatCurrency(ppn)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Total belanja'),
                  Text(formatCurrency(totalBelanja)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Total Pembayaran'),
                  Text(formatCurrency(totalPembayaran)),
                ],
              ),
              const SizedBox(height: 24.0),
              Center(
                child: ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor:
                          WidgetStatePropertyAll<Color>(Colors.blue)),
                  onPressed: () {
                    // Handle checkout action
                  },
                  child: const Text(
                    'Checkout',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CartItem extends StatelessWidget {
  final String image;
  final String title;
  final String price;
  final int count;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const CartItem({
    super.key,
    required this.image,
    required this.title,
    required this.price,
    required this.count,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Image.asset(
              image,
              width: 40,
            ),
            const SizedBox(width: 16.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontSize: 16),
                ),
                Text(
                  price,
                  style: const TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
            const Spacer(),
            Row(
              children: [
                IconButton(
                  onPressed: onDecrement,
                  icon: const Icon(Icons.remove),
                ),
                Text(count.toString()),
                IconButton(
                  onPressed: onIncrement,
                  icon: const Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}