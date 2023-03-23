import 'package:weather_app/classes/hour_forcast.dart';
import 'dart:io';

import 'package:weather_app/classes/rain_forcast.dart';
import 'package:weather_app/classes/wind_forcast.dart';
class Weather{
  String title="Açık";
  double temp=12;
  double feeledTemp=15;
  double nightTemp=3;
  double dayTemp=15;
  double humidity=65;
  double pressure=1100;
  double uvIndex=0;
  
  File img= File('/home/muhammed/Desktop/FlutterBasics/weather_app/lib/images/sun.png');

  Weather(this.title, this.temp, this.feeledTemp, this.nightTemp,this.dayTemp
  ,this.humidity,this.pressure,this.uvIndex);

  File getImage(){
    if(title=="Açık"){
      img= File('/home/muhammed/Desktop/FlutterBasics/weather_app/lib/images/sun.png');
  
    }
    else if(title=="Bulut"){
      img= File('/home/muhammed/Desktop/FlutterBasics/weather_app/lib/images/cloud.png');
  
    }
    else if(title=="Kar"){
      img= File('/home/muhammed/Desktop/FlutterBasics/weather_app/lib/images/snow.png');
  
    }
    else if(title=="Yağmur"){
      img= File('/home/muhammed/Desktop/FlutterBasics/weather_app/lib/images/rain.png');
  
    }
    return img;
  }
  void getData(){

  }
  List<HourForcast> setHourlyForcast(){
    List<HourForcast> forcast=[
      HourForcast("Açık", "12:00", 18),
      HourForcast("Açık", "13:00", 15),
      HourForcast("Açık", "14:00", 19),
      HourForcast("Açık", "15:00", 10),
      HourForcast("Açık", "16:00", 17),
      HourForcast("Açık", "17:00", 15),
      HourForcast("Açık", "18:00", 14),
      HourForcast("Bulut", "19:00", 13),
      HourForcast("Bulut", "20:00", 11),
      HourForcast("Bulut", "21:00", 17),
      HourForcast("Bulut", "22:00", 9),
      HourForcast("Bulut", "23:00", 5),
      HourForcast("Bulut", "00:00", 2),

    ];
    return forcast;
  }
  List <RainForcast> setRainForcast(){

    List<RainForcast> rainForcast=[

      RainForcast("12:00", 10),
      RainForcast("13:00", 20),
      RainForcast("14:00", 30),
      RainForcast("15:00", 40),
      RainForcast("16:00", 45),
      RainForcast("17:00", 60),
      RainForcast("18:00", 70),
      RainForcast("19:00", 5),
      RainForcast("20:00", 90),
      RainForcast("21:00", 0),
      RainForcast("22:00", 12),
      RainForcast("23:00", 35),
      RainForcast("00:00", 100),

    ];

    return rainForcast;
  }
  List <WindForcast> setWindForcast(){

    List<WindForcast> windForcast=[

      WindForcast("12:00", 10,120),
      WindForcast("13:00", 20,100),
      WindForcast("14:00", 30,90),
      WindForcast("15:00", 40,30),
      WindForcast("16:00", 45,180),
      WindForcast("17:00", 60,270),
      WindForcast("18:00", 70,130),
      WindForcast("19:00", 5,45),
      WindForcast("20:00", 90,10),
      WindForcast("21:00", 0,30),
      WindForcast("22:00", 12,150),
      WindForcast("23:00", 35,320),
      WindForcast("00:00", 100,190),

    ];

    return windForcast;
  }
  String getUv(){
    if(uvIndex>=0 &&uvIndex<3) {
      return "Düşük";
    } 
    else if(uvIndex>=3 && uvIndex<6) {
      return "Orta";
    }
    else if(uvIndex>=6 && uvIndex<8) {
      return "Yüksek";
    }
    else if(uvIndex>=8 && uvIndex<10) {
      return "Çok Yüksek";
    }
    else  {
      return "Aşırı Yüksek";
    }
    
  }
  

}