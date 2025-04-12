import 'package:coffee_masters/datamanager.dart';
import 'package:coffee_masters/pages/menupage.dart';
import 'package:coffee_masters/pages/offerspage.dart';
import 'package:coffee_masters/pages/orderspage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee Masters',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var dataManager = DataManager();
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget page = Container();

    switch (selectedIndex) {
      case 0:
        page = Menupage(dataManager: dataManager);
        break;
      case 1:
        page = const Offerspage();
        break;
      case 2:
        page = OrdersPage(dataManager: dataManager);
        break;
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Image.asset("images/logo.png"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Colors.amber.shade500,
        unselectedItemColor: Colors.amber.shade50,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.coffee), label: "Menu"),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer),
            label: "Offers",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_checkout_rounded),
            label: "Orders",
          ),
        ],
      ),
      body: page,
    );
  }
}
