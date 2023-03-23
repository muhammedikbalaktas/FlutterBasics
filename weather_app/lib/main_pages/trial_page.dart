import 'dart:io';
import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http_requests/http_requests.dart';

class TrialPage extends StatefulWidget {
  const TrialPage({super.key});

  @override
  State<TrialPage> createState() => _TrialPageState();
}

class _TrialPageState extends State<TrialPage> {
  String data = "";
  String result="";
  Future<void> getData() async {
    Response response =
        await HttpRequests.get('http://localhost:81/weather_data/daily/');
    data=response.content;
    Map <String, dynamic> decodedData=jsonDecode(data);
    result=decodedData['name'];
    
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Column(
        children: [
          TextButton(
              onPressed: getData,
              child: Text(
                "Get Data",
                style: TextStyle(fontSize: 50),
              )
              ),
              Text(data,style: TextStyle(fontSize: 50),),
              Text(result,style: TextStyle(fontSize: 50),)
        ],
      )),
    );
  }
}
