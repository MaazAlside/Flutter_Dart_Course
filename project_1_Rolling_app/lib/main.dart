import 'package:flutter/material.dart';
import '../project_1_Rolling_app/lib/gradiant_container.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter First App',
      home: Scaffold(
        body: GradiantContainer(
          const [
            Color.fromARGB(255, 23, 214, 125),
            Color.fromARGB(255, 64, 207, 255)
          ],
        ),
      ),
    );
  }
}
