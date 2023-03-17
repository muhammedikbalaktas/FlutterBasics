import 'dart:io';

import 'package:flutter/material.dart';
import 'package:weather_app/classes/card_view.dart';

class InputOutput extends StatefulWidget {
  const InputOutput({super.key});

  @override
  State<InputOutput> createState() => _InputOutputState();
}

class _InputOutputState extends State<InputOutput> {
  @override
  Widget build(BuildContext context) {
    File cloudImage = File('/home/muhammed/Desktop/FlutterBasics/weather_app/lib/images/cloud.png');
  
    return Container(
        decoration: BoxDecoration(color: Color.fromARGB(255, 0, 118, 67)),
        child: ListView.builder(
          itemCount: 14,
          itemBuilder: (context, index) {
            return Container(
              height: 70,
              decoration: BoxDecoration(
                  border: Border.all(width: 0.3, color: Colors.white)),
              child: Row(
                
                children: [
                  Expanded(child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Bugün",style: myTextStyle(),),
                      Text("Açık",style: mySecondTextStyle(),)

                    ],
                  )
                  ),
                  Expanded(
                    child: Row(
                    children: [const
                      Text("90%",style: TextStyle(fontSize: 16,color: Color.fromARGB(255, 85, 248, 177)),),
                      Image.file(
                      cloudImage,
                      width: 100,
                      height: 100,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("14\u00B0", style: myTextStyle(),),
                          Text("9\u00B0",style: mySecondTextStyle(),)
                        ],
                      )

                    ],
                  )
                  ),

                ],
              ),
            );
          },
        ));
  }
}
 TextStyle myTextStyle(){
  return const TextStyle(
    fontSize: 30,
    color: Colors.white
  );
}
mySecondTextStyle(){
  return const TextStyle(
    fontSize: 20,
    color: Colors.white
  );
}


