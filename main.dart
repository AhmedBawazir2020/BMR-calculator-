import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController _age = TextEditingController();
  final TextEditingController _weight = TextEditingController();
  final TextEditingController _height = TextEditingController();
  double a, b,g,fmbi ,mbmi, result;
  @override
  Widget build(BuildContext context) {
    var color;
        return MaterialApp(
          title: 'Material App',
          home: Scaffold(
            appBar: AppBar(
              backgroundColor: Color(color.hashCode),
          title: Text('BMR Calculator'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("\n "),
                  Text("Gender"),
                  new DropdownButton<String>(
                    onChanged: popupButtonSelected,
                    value: "Male",
                    style: new TextStyle(
                        fontSize: 25,
                        color: const Color(0xFF202020),
                        fontWeight: FontWeight.w200,
                        fontFamily: "Merriweather"),
                    items: <DropdownMenuItem<String>>[
                      const DropdownMenuItem<String>(
                          value: "Male", child: const Text("Male")),
                      const DropdownMenuItem<String>(
                          value: "Female", child: const Text("Female")),
                    ],
                  ),
                  Text("\t\t\t "),
                  Text("BMR Equation"),
                  DropdownButton<String>(
                    onChanged: popupButtonSelected,
                    value: "Mifflin",
                    
                    style: new TextStyle(
                        fontSize: 25,
                        color: const Color(0xFF202020),
                        fontWeight: FontWeight.w200,
                        fontFamily: "Merriweather"),
                    items: <DropdownMenuItem<String>>[
                      const DropdownMenuItem<String>(
                          value: "Mifflin", child: const Text("Mifflin ")),
                      const DropdownMenuItem<String>(
                          value: "Harris", child: const Text("Harris ")),
                    ],
                  ),
                ],
              ),
              
              Text("Age"),
              TextField(
                controller: _age,
              ),
              Text("Height"),
              TextField(
                controller: _height,
              ),
              Text("Weight"),
              TextField(
                controller: _weight,
              ),
              RaisedButton(
                child: Text("Calculater"),
                shape: new RoundedRectangleBorder(borderRadius :BorderRadius.circular(20)),
                onPressed: _onPress,
              ),
              Text("BMI Male  : $mbmi"),
              Text("BMI Female : $fmbi")
            ],
          ),
        ),
      ),
    );
  }

  void _onPress() {
    setState(() {
      a = double.parse(_height.text);
      b = double.parse(_weight.text);
      g = double.parse(_age.text);
      mbmi = (10*b)+(6.25*a)-(5*g)+5;
      fmbi = (10*b)+(6.25*a)-(5*g)-161;
      
    });
  }

  void popupButtonSelected(String value) {}
}
