import 'package:ami/src/extensions/build_context.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            context.localizations.homePageAppBarTitle,
            style: context.theme.textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: CustomScrollView(
            primary: false,
            slivers: <Widget>[
              spacing,
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 100,
                  child: Card(
                    child: Container(),
                  ),
                ),
              ),
              spacing,
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 140,
                  child: Card(
                    child: Container(),
                  ),
                ),
              ),
              spacing,
              SliverGrid.count(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: List.generate(
                  4,
                  (int index) => Card(
                    child: Container(),
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  Widget get spacing => const SliverToBoxAdapter(
        child: SizedBox(height: 8),
      );
}
