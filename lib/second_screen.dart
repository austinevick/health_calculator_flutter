import 'package:circular_check_box/circular_check_box.dart';
import 'package:flutter/material.dart';
import 'package:health_calculator/third_screen.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1910da),
        title: Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
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
                    'I am ...',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(keyboardType: TextInputType.number,
                    cursorColor: Color(0xff1910da),
                    autofocus: true,
                    style: TextStyle(fontSize: 25, color: Color(0xff1910da)),textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.blue, style: BorderStyle.solid)),
                        fillColor: Colors.blue),
                  ),
                )),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Text(
                  'years old.',
                  style: TextStyle(
                      color: Color(0xff1910da),
                      fontSize: 25,
                      fontWeight: FontWeight.w500),
                ))
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ThirdScreen()));
        },
        child: Text('Next'),
        shape: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        backgroundColor: Color(0xff1910da),
      ),
    );
  }
}
