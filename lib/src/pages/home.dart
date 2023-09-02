import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Ami"),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.settings),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          )
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 100,
            child: Card(
              margin: EdgeInsets.all(8),
              child: Placeholder(),
            ),
          ),
          const SizedBox(
            height: 140,
            child: Card(
              margin: EdgeInsets.all(8),
              child: Placeholder(),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Wrap(
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              runAlignment: WrapAlignment.center,
              children: [
                ...List.generate(
                  4,
                  (int index) => Card(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width / 2.2,
                      height: MediaQuery.of(context).size.width * 0.4,
                      child: const Placeholder(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
