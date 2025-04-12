import 'package:flutter/material.dart';

class Offerspage extends StatelessWidget {
  const Offerspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        children: const [
          Offer(
            title: "My Great Offer Ever",
            description: "Buy 1, Get 10 Free",
          ),
          Offer(
            title: "My Great Offer Ever",
            description: "Buy 1, Get 10 Free",
          ),
          Offer(
            title: "My Great Offer Ever",
            description: "Buy 1, Get 10 Free",
          ),
          Offer(
            title: "My Great Offer Ever",
            description: "Buy 1, Get 10 Free",
          ),
          Offer(
            title: "My Great Offer Ever",
            description: "Buy 1, Get 10 Free",
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
      height: 170,
      width: 500,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 7,
          color: Colors.amber.shade50,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("images/background.png"),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Container(
                      color: Colors.amber.shade50,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          title,
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Container(
                      color: Colors.amber.shade50,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          description,
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
