import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Colors.purple[200],
        body: Center(
            child: Lottie.network(
                'https://assets7.lottiefiles.com/packages/lf20_ify3sfgn.json')));
  }
}
