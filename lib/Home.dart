import 'package:bottom_navigation_bar/Home1.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var iconColor = Colors.white;

  void changeColor(){
    setState(() {
      if(iconColor == Colors.white){
        iconColor = Colors.amberAccent;
      }else{
        iconColor = Colors.white;
      }
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("F L I P K A R T"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("H O M E    P A G E"),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomeOne()));
            }, child: Text("Next Page")),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.pink,
                  height: 100,
                  width: 100,
                  child: IconButton(onPressed: (){
                    changeColor();
                  }, icon: Icon(Icons.thumb_up),color: iconColor,),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  color: Colors.blue,
                  height: 100,
                  width: 100,
                  child: IconButton(onPressed: (){
                    changeColor();
                  }, icon: Icon(Icons.thumb_down),color: iconColor,),

                ),
              ],
            )
          ],
        ),
      )
    );
  }
}