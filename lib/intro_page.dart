import 'package:flutter/material.dart';
import 'package:health_calculator/screen_one.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xff1910da),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => FirstScreen()));
          },
          child: Text(
            'Skip',
            style: TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),
          ),
        ),
        appBar: AppBar(
          backgroundColor: Color(0xff1910da),
          centerTitle: true,
          title: Text('BMI Calculator'),
        ),
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage('image/blue.jpg'))),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Body mass index, or BMI, is used to determine whether you are in a healthy weight range for your height.',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'BMI compares your weight to your height and is calculated by dividing your weight (in kilograms) by your height (in metres squared). It gives you an idea of whether you’re underweight a healthy weight overweight or obese for your height.\n BMI is one type of tool to help health professionals assess the risk for chronic disease',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text('Read More',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600)),
                      ),
                    ],
                  ),
                ),
              ),
            )));
  }
}
