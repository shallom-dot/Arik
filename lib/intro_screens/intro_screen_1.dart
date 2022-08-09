import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple[200],
        body: Center(
            child: Lottie.network(
                'https://assets7.lottiefiles.com/packages/lf20_ovwsvehd.json')));
  }
}
