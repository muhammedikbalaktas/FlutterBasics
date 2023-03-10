import 'package:flutter/material.dart';
class InputOutput extends StatefulWidget {
  const InputOutput({super.key});

  @override
  State<InputOutput> createState() => _InputOutputState();
}

class _InputOutputState extends State<InputOutput> {
  String input = "The text will be shown here and it is scrollable";
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 2),
      ),
      child: Column(
        children: [
          Container(
            //for Text
            alignment: Alignment.center,
            margin: EdgeInsets.all(5),
            
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.elliptical(12,100)),
              border: Border.all(color: Color.fromARGB(255, 255, 140, 0), width: 2),
            ),
            height: 500,
            width: 500,
            padding: EdgeInsets.all(20),
            child: SingleChildScrollView(
              
              child: Text(
              "$input",
              style: TextStyle(fontSize: 50),
            ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 400,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(right: 50),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(color: Colors.blue, width: 2)),
                child: TextField(
                  onChanged: (value) {
                    input = value;
                  },
                  decoration: InputDecoration(
                    hintText: "Enter Something",
                  ),
                ),
              ),
              Container(
                child: IconButton(
                  onPressed: () {
                    setState(() {});
                  },
                  icon: Icon(Icons.add),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}