import 'package:days_count/app_screens/demo.dart';
import 'package:flutter/material.dart';
import 'finalresult.dart';
import 'demo.dart';
import 'result.dart';

class Monthday extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MonthdayState();
  }
}

class _MonthdayState extends State<Monthday> {
  List<String> _days = <String>[
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16',
    '17',
    '18',
    '19',
    '20',
    '21',
    '22',
    '23',
    '24',
    '25',
    '26',
    '27',
    '28',
    '29',
    '30',
    '31'
  ];
  List<String> _months = <String>[
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];
  FinalResult newResult = new FinalResult();

  var _currentday = '1';
  var _currentmonth = 'January';
  var newday;
  var currentday1;
  var currentmonth1;

  var totaldays = '0';

  // TextEditingController textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Select Days and Month"),
        ),
        body: Container(
            padding: EdgeInsets.only(top: 100),
            child: Center(
                child: Column(
              children: <Widget>[
                // Day DropDownButton Code
                DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    items: _days.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String newday) {
                      newResult.daynew = newday;
                      _ondayselect(newday);
                    },
                    value: _currentday,
                  ),
                ),

                // Month DropDownButton Code
                DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    items: _months.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String newmonth) {
                      newResult.monthnew = newmonth;
                      _onmonthselect(newmonth);
                    },
                    value: _currentmonth,
                  ),
                ),

                //Submit Button
                RaisedButton(child: Text("Submit"), onPressed: () {
                  print(newResult.daynew);
                  print(newResult.monthnew);
                }
                    // _sendDataToSecondScreen(context);

                    //                 Navigator.push(
                    // context,
                    // MaterialPageRoute(
                    //   builder: (context) => SecondScreen(text: 'Hello',),
                    // ));

                    // return showDialog(
                    //   context: context,
                    //   builder: (context) {
                    //     return AlertDialog(
                    //       content: Text("Total Days are $totaldays" ),
                    //     );
                    //   },
                    // );

                    )
              ],
            ))));

    // daymonth(this._currentday, this._currentmonth);
  }

  _ondayselect(String newday) {
    setState(() {
      this._currentday = newday;
      // currentday1 = _currentday;
    });
  }

  _onmonthselect(String newmonth) {
    setState(() {
      this._currentmonth = newmonth;
      // currentmonth1 = _currentmonth;
    });
  }

  // if(newResult.monthnew)

  // void _finResult() {
  //   setState(() {
  //     if(currentmonth1("January")){
  //       totaldays = '31-$currentday1';
  //     }else {
  //       print("hello");
  //     }
  //     return  Scaffold(appBar: AppBar(
  //       title: Text("Result"),
  //       ),
  //       body: Container(child: Center(
  //         child: Text(totaldays),
  //         ),
  //         ),
  //     );
  //   });
  // }

  // void _sendDataToSecondScreen(BuildContext context) {
  //   String textToSend = this._currentmonth;
  //   Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) => SecondScreen(text: textToSend,),
  //       ));
  // }

}

//   class SecondScreen extends StatelessWidget {
//   final String text;
//   // final String hello = text;
//   var totaldays='52';
//   SecondScreen({Key key, @required this.text}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Second screen')),
//       body: Center(
//         child: Text("Total Days are "+
//           totaldays,
//           style: TextStyle(fontSize: 24),
//         ),
//       ),
//     );
//   }

//   void finalresult(var totaldays) {
//     var totaldays;
//       if(text=="January")
//         totaldays = 31;
//         return totaldays;
//       // else if(newmonth=='February')
//       //   totaldays = '31+29-this._currentday';
//       }

// }
// class Finalresult extends _MonthdayState {

// }

// Widget _result() {

//     }
//   Widget build(BuildContext context) {
//   return new Container(child: _buildChild());

// }
