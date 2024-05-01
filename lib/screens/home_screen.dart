import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;

  void _incrementCounter() {
    _counter++;
    setState(() {});
  }

  void _resetCounter() {
    _counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF191919),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  'assets/image/zikirmatik.jpg',
                  width: 300,
                ),
                Positioned(
                  top: 70,
                  right: 95,
                  child: _counterText(),
                ),
                Positioned(
                  bottom: 57,
                  child: _incrementButton(),
                ),
                Positioned(
                  left: 88,
                  bottom: 129,
                  child: GestureDetector(
                    onTap: _resetCounter,
                    child: Container(
                      width: 23,
                      height: 23,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60)),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  GestureDetector _incrementButton() {
    return GestureDetector(
      onTap: _incrementCounter,
      child: Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(60)),
      ),
    );
  }

  Text _counterText() {
    return Text(
      '$_counter',
      style: const TextStyle(
          fontFamily: 'Nunito-Bold', fontSize: 50, color: Colors.white),
    );
  }
}
