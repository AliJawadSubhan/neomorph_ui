import 'package:flutter/material.dart';
import 'package:neomorphui/widgets/cus_container.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
          backgroundColor: Colors.grey.shade300,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomWhiteContainer(
                        height: 60,
                        width: 60,
                        child: Icon(Icons.arrow_back),
                      ),
                      Text('P L A Y L I S T'),
                      CustomWhiteContainer(
                        height: 60,
                        width: 60,
                        child: Icon(Icons.menu),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  CustomWhiteContainer(
                    // height: 400,
                    width: double.infinity,
                    child: Column(
                      children: [
                        Image.asset("assets/pxfuel.jpg"),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          "No Peace~! ❤️",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("0:00"),
                      Icon(Icons.shuffle),
                      Icon(Icons.repeat),
                      Text("3:23"),
                    ],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  CustomWhiteContainer(
                    child: LinearPercentIndicator(
                      lineHeight: 10,
                      percent: 0.8,
                      progressColor: Colors.black,
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CustomWhiteContainer(
                          child: Icon(Icons.skip_previous),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: CustomWhiteContainer(
                          child: Icon(Icons.play_arrow),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: CustomWhiteContainer(
                          child: Icon(Icons.skip_next),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )),
    );
  }
}
