import 'package:flutter/material.dart';

class IncrementDecrementWidget extends StatefulWidget {
  @override
  _IncrementDecrementWidgetState createState() =>
      _IncrementDecrementWidgetState();
}

class _IncrementDecrementWidgetState extends State<IncrementDecrementWidget> {
  int quantity = 100; // Initial quantity

  void incrementQuantity() {
    setState(() {
      quantity++;
    });
  }

  void decrementQuantity() {
    setState(() {
      if (quantity > 0) {
        quantity--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(Icons.remove),
            onPressed: () {
              decrementQuantity(); // Call decrement method
            },
          ),
          Text(
            '$quantity', // Display current quantity
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              incrementQuantity(); // Call increment method
            },
          ),
        ],
      ),
    );
  }
}
