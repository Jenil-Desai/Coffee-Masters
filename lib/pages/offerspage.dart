import 'package:flutter/material.dart';

class Offerspage extends StatelessWidget {
  const Offerspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: const [
          Offer(
            title: "Holiday Special",
            description: "Buy one festive drink, get one free before 10am",
          ),
          Offer(
            title: "Member Mondays",
            description: "50% off any coffee every Monday with loyalty card",
          ),
          Offer(
            title: "Student Discount",
            description: "20% off with valid student ID",
          ),
          Offer(
            title: "Morning Bundle",
            description: "Coffee and pastry for just \$5.99 before noon",
          ),
          Offer(
            title: "Loyalty Reward",
            description: "Free coffee after 10 purchases with our app",
          ),
        ],
      ),
    );
  }
}

class Offer extends StatelessWidget {
  final String title;
  final String description;

  const Offer({super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 200,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 7,
          color: Colors.amber.shade50,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.local_offer,
                        size: 55,
                        color: Colors.brown,
                      ),
                      Expanded(
                        child: Text(
                          title,
                          style: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  description,
                  style: const TextStyle(fontSize: 20),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
