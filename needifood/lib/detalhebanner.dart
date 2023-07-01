import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class DetalheBanner extends StatelessWidget {
  const DetalheBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Image.asset('images/beefburger.png'),
      ),
    );
  }
}