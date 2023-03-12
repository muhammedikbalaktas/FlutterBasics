import 'package:flutter/material.dart';

class MyListView extends StatefulWidget {
  const MyListView({super.key});

  @override
  State<MyListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
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