import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:io';
class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  // DateTime now= DateTime.now();
  String formattedDate = DateFormat('MMM dd').format(DateTime.now());
  File imageFile = File('/home/muhammed/Desktop/FlutterBasics/weather_app/lib/images/sun.jpg');
  File cloudImage=File('/home/muhammed/Desktop/FlutterBasics/weather_app/lib/images/cloud.png');
  File drop=File('/home/muhammed/Desktop/FlutterBasics/weather_app/lib/images/drop.png');
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Expanded(//yapı doğru mu?
        child: Column(
          children: [
            Text(formattedDate,style: const TextStyle(fontSize: 20),
            
            ),
            Row(
            children: [
              const Expanded(
                child: Text("11\u00B0",style: TextStyle(fontSize: 120),),
                
              ),
              Expanded(
                child: Image.file(imageFile)
              )
            ],
            ),
            Row(
            children: const [
              Expanded(
                child: Text("Hissedilen 11\u00B0\nGece 3\u00B0 \u2193 Gündüz 3\u00B0 \u2191",style: TextStyle(fontSize: 15),),
                
              ),
              Expanded(
                child: Center(child: Text("Açık",style: TextStyle(fontSize: 50),),)
              )
            ],
            ),
            Container(
              height: 180,
              decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.black,width: 1))
              ),
              child: ListView.builder(
                itemCount: 10,
              scrollDirection: Axis.horizontal, 
              itemBuilder: (BuildContext context, int index) { 
              return Center(
                child: Column(
                  children:[
                  const Text("%40",
                  style: TextStyle(
                    fontSize: 15
                  ),),
                  Container(
                    decoration:const BoxDecoration(border: Border(bottom: BorderSide(width: 1,color: Colors.black))),
                    child: Image.file(
                      cloudImage,
                      width: 100,
                      height: 100,
                      ),
                  ),
                  const Text("22:00",style: TextStyle(
                    fontSize: 20
                  ),)

                ]
                ),
              );

              },
            
              ) ,
            ),
            Container(
              height: 180,
              decoration: BoxDecoration(border: Border.all(width: 1,color:Colors.black)),
              child: Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  Row(
                    children: const [
                      Text("Güncel Detaylar",
                      style: TextStyle(
                        fontSize: 25
                      ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                    
                    Text("Nem Oranı",style: TextStyle(fontSize: 20)),
                    Text("81%",style: TextStyle(fontSize: 20))

                  ],),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                    
                    Text("Basınç",style: TextStyle(fontSize: 20)),
                    Text("1050 mBar",style: TextStyle(fontSize: 20))

                  ],),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                    
                    Text("Uv İndeksi",style: TextStyle(fontSize: 20)),
                    Text("Düşük,0",style: TextStyle(fontSize: 20))

                  ],)

              ]
                ),
              ),

            ),
            Container(
              height: 160,
              decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.black,width: 2))
              ),
              child: ListView.builder(
                itemCount: 10,
              scrollDirection: Axis.horizontal, 
              itemBuilder: (BuildContext context, int index) { 
              return Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children:[
                  const Text("10%",
                  style: TextStyle(
                    fontSize: 15
                  ),),
                  Container(
                    
                    child: Image.file(
                      drop,
                      width: 70,
                      height: 70,
                      ),
                  ),
                  const Text("0.0",style: TextStyle(
                    fontSize: 15
                  ),)

                ]
                ),
              );

              },
            
              ) ,
            ),
            
            
            
            
          ],

      )
      )
    );
  }
}