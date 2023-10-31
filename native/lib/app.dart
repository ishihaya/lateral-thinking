

import 'package:flutter/material.dart';
import 'package:lateral_thinking/ui/pages/index.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: IndexPage(),
    );
  }
}