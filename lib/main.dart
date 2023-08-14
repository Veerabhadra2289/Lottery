import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 0;
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lottery APP'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Text('Lottery winning number is 5'),),
            SizedBox(height: 20,),
            Container(
              height: x == 5 ? 550 : 250,
              width: 300,
              decoration: BoxDecoration(
                color: x == 5 ? Colors.teal : Colors.blueGrey.withOpacity(.3),
                borderRadius: BorderRadius.circular(18)

              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: x == 5 ?
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.done_all , color: Colors.green, size: 35,),
                    SizedBox(height: 15,),
                    Text('Congratulations you have won the Lottery your number is $x\n ' , textAlign: TextAlign.center,)

                  ],
                ):


                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.error, color: Colors.red, size: 35,),
                    SizedBox(height: 15,),
                    Text('Better luck next time your number is $x\n Try again' , textAlign: TextAlign.center,)

                  ],
                ),
              ),
            )

          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            print(random.nextInt(10).toString());
            x = random.nextInt(10);
            print(x);
            setState(() {

            });
          },
          child: Icon(Icons.refresh),
        ),
      ),

    );
  }
}




