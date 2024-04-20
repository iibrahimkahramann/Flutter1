import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Nunito"),
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text(
              'Uygulamam',
              style:
                  TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
            ),
            backgroundColor: Colors.indigo,
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () => print('Bana Tıkladın'),
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.indigo),
                  child: Text('Bana Tıkla'),
                ),
                TextButton(
                  onPressed: () => print('Bana Tıkladın'),
                  child: Text('Bana Tıkla'),
                  style: TextButton.styleFrom(backgroundColor: Colors.amber),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.red,
                    size: 40,
                  ),
                )
              ],
            ),
          )),
    );
  }
}
