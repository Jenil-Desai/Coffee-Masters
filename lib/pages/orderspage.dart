import 'package:coffee_masters/datamanager.dart';
import 'package:coffee_masters/datamodel.dart';
import 'package:flutter/material.dart';

class OrdersPage extends StatefulWidget {
  final DataManager dataManager;
  const OrdersPage({super.key, required this.dataManager});

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  @override
  Widget build(BuildContext context) {
    if (widget.dataManager.cart.isEmpty) {
      return Center(child: const Text("Your cart is empty"));
    }
    return ListView.builder(
      itemCount: widget.dataManager.cart.length,
      itemBuilder: (context, index) {
        var item = widget.dataManager.cart[index];
        return OrderItem(
          item: item,
          onRemove: (product) {
            setState(() {
              widget.dataManager.cartRemove(product);
            });
          },
        );
      },
    );
  }
}

class OrderItem extends StatelessWidget {
  final ItemInCart item;
  final Function onRemove;
  const OrderItem({super.key, required this.item, required this.onRemove});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 1, // 10%
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text("${item.quantity}x"),
              ),
            ),
            Expanded(
              flex: 6, // 60%
              child: Text(
                item.product.name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              flex: 2,
              child: Text(
                "\$${(item.product.price * item.quantity).toStringAsFixed(2)}",
              ),
            ),
            Expanded(
              flex: 1,
              child: IconButton(
                color: Theme.of(context).primaryColor,
                onPressed: () {
                  onRemove(item.product);
                },
                icon: const Icon(Icons.delete),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
