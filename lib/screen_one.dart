import 'package:circular_check_box/circular_check_box.dart';
import 'package:flutter/material.dart';

import 'second_screen.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  bool isSelected = false;

  checked() {
    setState(() {
      isSelected = !isSelected;
    });
  }

  @override
  void initState() {
    super.initState();
    checked();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1910da),
        title: Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: Column(children: <Widget>[
        Expanded(
          flex: 0,
          child: Container(
            height: 250,
            decoration: BoxDecoration(
                color: Color(0xff1910da),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25))),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.centerLeft,
                heightFactor: 8,
                child: Text(
                  'I am a ...',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(behavior: HitTestBehavior.translucent,
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => SecondScreen()));
        },
        child: CircleAvatar(
          radius: 45,
          backgroundImage: AssetImage('image/male.jpg'),
        ),
                ),
                GestureDetector(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondScreen()));},
                      child: CircleAvatar(
          radius: 45,
          backgroundImage: AssetImage('image/female.webp'),
        ),
                ),
              ],
            ),
          ),
      ]),
      
    );
  }
}
