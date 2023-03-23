import 'dart:io';
class RainForcast{
  double ?rainRatio;
  String ?hour;
  
  File img=File('/home/muhammed/Desktop/FlutterBasics/weather_app/lib/images/cloud.png');
      
  
  RainForcast(String hour,double rainRatio){
    
    this.hour=hour;
    this.rainRatio=rainRatio;
    if(rainRatio>=0 && rainRatio <10){
      img=File('/home/muhammed/Desktop/FlutterBasics/weather_app/lib/images/drop.png');
      
    }
    else if(rainRatio>=10 &&rainRatio<20){
      img=File('/home/muhammed/Desktop/FlutterBasics/weather_app/lib/images/drop1.png');
      
    }
    else if(rainRatio>=20 &&rainRatio<40){
      img=File('/home/muhammed/Desktop/FlutterBasics/weather_app/lib/images/drop2.png');
      
    }
    else if(rainRatio>=40 &&rainRatio<60){
      img=File('/home/muhammed/Desktop/FlutterBasics/weather_app/lib/images/drop3.png');
      
    }
    else if(rainRatio>=60 &&rainRatio<80){
      img=File('/home/muhammed/Desktop/FlutterBasics/weather_app/lib/images/drop4.png');
      
    }
    else if(rainRatio>=80 ){
      img=File('/home/muhammed/Desktop/FlutterBasics/weather_app/lib/images/drop5.png');
      
    }
    
    
    

  }
  File getImage(){

    return img;
  }

  
  

}