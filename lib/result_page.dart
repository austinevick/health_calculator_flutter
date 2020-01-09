import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  var displayBMI;
  var getBmi;
  var displayRange;
  ResultPage({this.getBmi,this.displayBMI,this.displayRange});

  @override
  _ResultPageState createState() => _ResultPageState();
}
class _ResultPageState extends State<ResultPage> {
String sliderLabel = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff1910da),
        centerTitle: true,
        title: Text(
          'BMI Calculator',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  stops: [
                    0.1,
                    0.4,
                    0.6,
                    0.9
                  ],
                  colors: [
                    Color(0xff0f0b69),
                    Colors.blueAccent,
                    Colors.indigo,
                    Colors.teal
                  ]),
              borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(150), top: Radius.circular(100)),
              color: Color(0xff1910da)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Text(
                  widget.displayBMI,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  widget.displayRange,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
              SizedBox(height: 20,),
              Slider(label: sliderLabel,
              divisions: widget.getBmi.hashCode,
                onChanged: (val) {
                  setState(() {
                 widget.getBmi = val;
                    sliderLabel = val.toStringAsFixed(1);
                  });
                },
                value: widget.getBmi,
                min: 1.0,
                max: widget.getBmi,
                activeColor: Colors.white,
                inactiveColor: Colors.blue,
              )
            ],
          ),
        ),
      ),
    );
  }
}
