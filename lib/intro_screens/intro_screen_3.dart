import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple[200],
        body: Center(
            child: Lottie.network(
                'https://assets7.lottiefiles.com/packages/lf20_3tryizhw.json')));
  }
}
