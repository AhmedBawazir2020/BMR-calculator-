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
  double a, b, g, fmbi, mbmi, result;

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
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Age"),
              Divider(),
              TextField(
                controller: _age,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 200.0),
                ),
              ),
              Divider(),
              Text("Height"),
              TextField(
                controller: _height,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 200.0),
                ),
              ),
              Divider(),
              Text("Weight"),
              Divider(),
              TextField(
                controller: _weight,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 200.0),
                ),
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RaisedButton(
                        child: Text("Calculater"),
                        shape: new RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        onPressed: _onPress,
                      ),
                    ),
                  ),
                  RaisedButton(
                    child: Text("Clear"),
                    shape: new RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: _clear,
                  ),
                ],
              ),
              Text("BMI For Male     : $mbmi"),
              Text("BMI For Female : $fmbi"),
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
      mbmi = (10 * b) + (6.25 * a) - (5 * g) + 5;
      fmbi = (10 * b) + (6.25 * a) - (5 * g) - 161;
    });
  }

  void popupButtonSelected(String value) {}

  void _clear() {
    setState(() {
      this._height.text = '';
      this._weight.text = '';
      this._age.text = '';
    });
  }
}
