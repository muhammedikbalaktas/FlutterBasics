import 'dart:io';
class WindForcast{
  double windRatio;
  String ?hour;
  double ?windDirection;
  File img=File('/home/muhammed/Desktop/FlutterBasics/weather_app/lib/images/arrow.png');
      
  
  WindForcast(String this.hour,double this.windRatio,double this.windDirection);
  File getImage(){

    return img;
  }

  
  

}