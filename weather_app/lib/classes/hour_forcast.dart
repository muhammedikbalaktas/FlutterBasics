import 'dart:io';
class HourForcast{
  String ?title;
  String ?hour;
  double? temp;
  File img=File('/home/muhammed/Desktop/FlutterBasics/weather_app/lib/images/cloud.png');
      
  
  HourForcast(String title,String hour,double temp){
    this.title=title;
    this.hour=hour;
    this.temp=temp;
    if(this.title=="Açık"){
      
      this.img=File('/home/muhammed/Desktop/FlutterBasics/weather_app/lib/images/sun.png');

    }
    else if(this.title=="Bulut"){
      this.img=File('/home/muhammed/Desktop/FlutterBasics/weather_app/lib/images/cloud.png');
      
    }
    

  }
  File getImage(){

    return img;
  }

  
  

}