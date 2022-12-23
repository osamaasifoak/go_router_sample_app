import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  /// Constructs a [HomeScreen]
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => context.go('/details/Osama'),
              child: const Text('Go to the Details screen with path param'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () => context.go('/detailsQueryParam?name=Osama'),
              child: const Text('Go to the Details screen with query params'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () => context.go('/detailsWithExtraParam', extra: "Osama"),
              child: const Text('Go to the Details screen with extra params'),
            ),
          ],
        ),
      ),
    );
  }
}
