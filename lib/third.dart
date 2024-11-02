import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int _burgerKingMediumCount = 1;
  int _tehBotolCount = 2;
  int _burgerKingSmallCount = 1;
  

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
                image: 'assets/BURGER.jpg',
                title: 'Burger King Medium',
                price: '50.000,00',
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
                image: 'assets/TEH.jpg',
                title: 'Teh Botol',
                price: '4.000,00',
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
                image: 'assets/BURGER.jpg',
                title: 'Burger King Small',
                price: '35.000,00',
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
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('PPN 11%'),
                  Text('Rp 10.000,00'),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total belanja'),
                  Text('Rp 94.000,00'),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total Pembayaran'),
                  Text('Rp 104.000,00'),
                ],
              ),
              const SizedBox(height: 24.0),
              Center(
                child: ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll<Color>(Color.fromARGB(255, 245, 53, 133))
                  ),
                  onPressed: () {
                    // Handle checkout action
                  },
                  child: const Text('Checkout',style: TextStyle(fontSize: 20,color: Colors.white) ,),
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
