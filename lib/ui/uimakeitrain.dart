import 'package:flutter/material.dart';
class UiRain extends StatefulWidget {
  @override
  _UiRainState createState() => _UiRainState();
}

class _UiRainState extends State<UiRain> {

  int _counter=0;
  void counterIn(){
    setState(() {
      _counter+=100;
    });


  }
  double pad=30;

  @override
  Widget build(BuildContext context) {
    return Center(
      child:Column(
        children: <Widget>[

          Text('Get Rich!', style: TextStyle(
            color: Colors.black45, fontSize: 35.0,
          ),),

          Padding(
            padding: EdgeInsets.only(top: pad * 4),
            child: Text('$_counter\$', style: TextStyle(
              color:_counter>2000?Colors.lightGreen:Colors.red, fontSize: 50.0,
            ),),
          ), Padding(
            padding: EdgeInsets.only(top: pad * 5),
            child: RaisedButton(
                color:_counter>2000? Colors.blue:Colors.red,
                child: Text('Let it Rain!', style: TextStyle(
                  color: Colors.white, fontSize: 28.0,
                ),),
                onPressed: counterIn),
          ),
        ],),
    );
  }
}