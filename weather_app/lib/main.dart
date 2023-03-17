import 'package:flutter/material.dart';
import 'package:weather_app/main_pages/home_page.dart';
import 'package:weather_app/main_pages/second_page.dart';
import 'package:weather_app/main_pages/third_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Istanbul",style: TextStyle(fontSize: 50),),
          centerTitle: true,
        ),
        body: const RootPage(),
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
  int index = 0;
  List<Widget> pages=[
    const HomePage(),
    const SecondPage(),
    const InputOutput()
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Expanded(
              child: ElevatedButton(
              onPressed: () {
              index=0;
              setState(() {
                
              });
            },
            style: ElevatedButton.styleFrom(
                  backgroundColor:index ==0? const Color.fromARGB(255, 80, 193, 246):Colors.blue,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                    
                    
                  )
            ),
            child: const Text("Bugün",style: TextStyle(fontSize: 28),)
            ),
            ),
            Expanded(
              child: ElevatedButton(onPressed: () {
              index=1;
              setState(() {
                
              });
            },
            style: ElevatedButton.styleFrom(
                  backgroundColor:index ==1? const Color.fromARGB(255, 80, 193, 246):Colors.blue,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero
                  )
            ),
            child: const Text("Yarın",
            style: TextStyle(fontSize: 28),
            )
            ),
            ),
            Expanded(
              child: TextButton(onPressed: () {
              index=2;
              setState(() {
                
              });
              
            },
            
            style: TextButton.styleFrom(
              
                  backgroundColor:index ==2? const Color.fromARGB(255, 80, 193, 246):Colors.blue,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero
                  )
            ),
            child: const Text("14 Gün",style: TextStyle(fontSize: 28,color:Colors.white),)
            ),
            ),

            
            


            ],
          ),
        Expanded(child: Container(
          
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 2),
          ),
          
          child: pages[index],
        )
        )
      ],
    );
  }
}
