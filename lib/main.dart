import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

Random random = Random();

class _MyAppState extends State<MyApp> {
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Lottery App"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Text("Lottery winning number is 4")),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 250,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),

                child: x==5? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.done,
                      color: Colors.green,
                      size: 35,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Congrats, You won the lottery",
                      textAlign: TextAlign.center,
                    )
                  ],
                ):
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.error,
                      color: Colors.red,
                      size: 35,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Better luck next time , Your Number is $x \nTRY AGAIN",
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            )
            // Text(x>5 ? "x is greater than 5" : x.toString()),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            x = random.nextInt(6);
            print(x);
            setState(() {});
            // print(random.nextInt(10).toString());
            print("Tapped");
          },
          child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}
