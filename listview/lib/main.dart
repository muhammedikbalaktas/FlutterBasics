import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: RootPage(),
      ),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  List<String> data = [];
  void addData(){
    data.add("New Data");
    setState(() {
      
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 2),
              borderRadius: BorderRadius.all(Radius.circular(2)),
            ),
            width: 700,
            height: 700,
            child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text("$index"),
                  subtitle: Text("${data[index]}"),
                  onTap: () {
                    data.removeAt(index);
                    setState(() {
                      
                    });
                  },
                );
                
              },
            ),
          ),
          IconButton(
            
            onPressed: addData,
            icon: Icon(Icons.add),
            
            )
            
        ],
      ),
    );
  }
  
}
