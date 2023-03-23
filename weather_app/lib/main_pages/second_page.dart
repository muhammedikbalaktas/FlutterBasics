import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/classes/hour_forcast.dart';
import 'package:weather_app/classes/rain_forcast.dart';
import 'dart:io';

import 'package:weather_app/classes/weather.dart';
class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  // DateTime now= DateTime.now();
  String formattedDate = DateFormat('MMM dd').format(DateTime.now());

  
  File imageFile = File('/home/muhammed/Desktop/FlutterBasics/weather_app/lib/images/sun.png');

  File cloudImage=File('/home/muhammed/Desktop/FlutterBasics/weather_app/lib/images/cloud.png');
  File drop=File('/home/muhammed/Desktop/FlutterBasics/weather_app/lib/images/drop1.png');
  Weather myWeather=Weather("Kar",-5,-3,-8,-12,65,1100,1);
  
  @override
  void initState() {
    super.initState();
    
    
    
    
  }
  @override

  Widget build(BuildContext context) {
    List<HourForcast> forcast=myWeather.setHourlyForcast();
    List <RainForcast> rainForcast=myWeather.setRainForcast();

   
    print("data initied");
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(formattedDate,style: const TextStyle(fontSize: 20),
          
          ),
          Row(
          children: [
             Expanded(
              child: Text("${myWeather.temp} \u00B0",style: TextStyle(fontSize: 100),),
              
            ),
            Expanded(
              child: Image.file(myWeather.getImage())
            )
          ],
          ),
          Row(
          children:  [
            Expanded(
              child: Text("Hissedilen ${myWeather.temp}\u00B0\nGece ${myWeather.nightTemp}\u00B0 \u2193 Gündüz ${myWeather.dayTemp}\u00B0 \u2191",style: TextStyle(fontSize: 15),),
              
            ),
            Expanded(
              child: Center(child: Text(myWeather.title,style: const TextStyle(fontSize: 50),),)
            )
          ],
          ),
          Container(
            height: 180,
            decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.black,width: 1))
            ),
            child: ListView.builder(
            itemCount: 13,
            scrollDirection: Axis.horizontal, 
            itemBuilder: (BuildContext context, int index) { 
            
            
            return Center(
              
              child: Column(
                children:[
                 Text("${forcast[index].temp}",
                style: TextStyle(
                  fontSize: 15
                ),),
                Container(
                  decoration:const BoxDecoration(border: Border(bottom: BorderSide(width: 1,color: Colors.black))),
                  child: Image.file(
                    forcast[index].getImage(),
                    width: 100,
                    height: 100,
                    ),
                ),
                 Text("${forcast[index].hour}",style: TextStyle(
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text("Güncel Detaylar",
                  style: TextStyle(
                    fontSize: 25
                  ),
                  ),
                  Text("",
                  style: TextStyle(
                    fontSize: 25
                  ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:  [
                
                Text("Nem Oranı",style: TextStyle(fontSize: 20)),
                Text("${myWeather.humidity}%",style: TextStyle(fontSize: 20))

              ],),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:  [
                
                Text("Basınç",style: TextStyle(fontSize: 20)),
                Text("${myWeather.pressure} mBar",style: TextStyle(fontSize: 20))

              ],),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:  [
                
                Text("Uv İndeksi",style: TextStyle(fontSize: 20)),
                Text("${myWeather.getUv()},${myWeather.uvIndex}",style: TextStyle(fontSize: 20))

              ],)

            ]
            ),

          ),
          Text("Yağış",style: TextStyle(fontSize: 20),),
          Container(
            height: 160,
            decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.black,width: 2))
            ),
            child: ListView.builder(
              itemCount: rainForcast.length,
            scrollDirection: Axis.horizontal, 
            itemBuilder: (BuildContext context, int index) { 
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children:[
                 Text("${rainForcast[index].rainRatio}%",
                style: TextStyle(
                  fontSize: 15
                ),),
                Container(
                  
                  child: Image.file(
                    rainForcast[index].img,
                    width: 70,
                    height: 70,
                    ),
                ),
                 Text("${rainForcast[index].hour}",style: TextStyle(
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
    );
  }
}