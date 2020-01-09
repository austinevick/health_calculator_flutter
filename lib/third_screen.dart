import 'package:flutter/material.dart';
import 'package:health_calculator/bmi_calc.dart';
import 'package:health_calculator/result_page.dart';


class ThirdScreen extends StatefulWidget {
  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  int sliderheight = 300;
  int sliderWeight = 300;
  String height = '0';
  String weight = '0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1910da),
        title: Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: ListView(children: <Widget>[
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
                'I have ...',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Height',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff1910da),
                ),
                textAlign: TextAlign.start,
              )),
        ),
        Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Slider(
                activeColor: Color(0xff1910da),
                value: sliderheight.toDouble(),
                onChanged: (val) {
                  setState(() {
                    sliderheight = val.round();
                    height = val.toStringAsFixed(1);
                  });
                },
                divisions: 300,
                min: 1.0,
                max: 300,
                label: height.toString(),
                inactiveColor: Colors.blueAccent,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    width: 70,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff1910da)),
                      shape: BoxShape.rectangle,
                    ),
                    child: Text(sliderheight.toStringAsFixed(1) + 'cm',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff1910da)))),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Weight',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff1910da),
                ),
                textAlign: TextAlign.start,
              )),
        ),
        Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Slider(
                activeColor: Color(0xff1910da),
                value: sliderWeight.toDouble(),
                onChanged: (val) {
                  setState(() {
                    sliderWeight = val.round();
                    weight = val.toStringAsFixed(1);
                  });
                },
                divisions: 300,
                min: 1,
                max: 300,
                label: weight.toString(),
                inactiveColor: Colors.blueAccent,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    width: 70,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff1910da)),
                      shape: BoxShape.rectangle,
                    ),
                    child: Text(sliderWeight.toStringAsFixed(1) + 'kg',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff1910da)))),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Align(
              alignment: Alignment.center,
              child: FlatButton(
                color: Color(0xff1910da),
                onPressed: () {
                  CalculateBMI bmi =
                      CalculateBMI(height: sliderheight, weight: sliderWeight,);

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ResultPage(getBmi: bmi.calcBmi(),
                                displayBMI: bmi.getBMI(),
                                displayRange: bmi.getRange(),
                              )));
                },
                autofocus: true,
                shape: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(8)),
                child: Text('Calculate your BMI',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              )),
        ),
      ]),
    );
  }
}
