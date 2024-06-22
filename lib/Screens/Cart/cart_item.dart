import 'package:e_com_app/Screens/cement.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartItem extends StatefulWidget {
  CementProduct cementProduct;
  CartItem({
    super.key,
    required this.cementProduct,
  });

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void removeItemFromCart() {
    Provider.of<Cement>(context, listen: false)
        .removeItemFromCart(widget.cementProduct);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.cementProduct.imagePath),
        title: Text(widget.cementProduct.name),
        subtitle: Text(widget.cementProduct.description),
        trailing: IconButton(
          icon: Icon(
            Icons.delete,
          ),
          onPressed: removeItemFromCart,
        ),
      ),
    );
  }
}
