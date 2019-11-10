import 'package:flutter/material.dart';

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

  var totaldays;

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
                RaisedButton(
                    child: Text("Submit"),
                    onPressed: () {

                      int i = int.parse(newResult.daynew); 
                      if (newResult.monthnew == "January") {
                        totaldays = i;
                      }
                      else if (newResult.monthnew == "February" && i<=29) {
                        totaldays = 31+i;
                      }
                      else if (newResult.monthnew == "March") {
                        totaldays = 31+29+i;
                      }
                      else if (newResult.monthnew == "April" && i<=30) {
                        totaldays = 31+29+31+i;
                      }
                      else if (newResult.monthnew == "May") {
                        totaldays = 31+29+31+30+i;
                      }
                      else if (newResult.monthnew == "June" && i<=30) {
                        totaldays = 31+29+31+30+31+i;
                      }
                      else if (newResult.monthnew == "July") {
                        totaldays = 31+29+31+30+31+30+i;
                      }
                      else if (newResult.monthnew == "August") {
                        totaldays = 31+29+31+30+31+30+31+i;
                      }
                      else if (newResult.monthnew == "September" && i<=30) {
                        totaldays = 31+29+31+30+31+30+31+31+i;
                      }
                      else if (newResult.monthnew == "October") {
                        totaldays = 31+29+31+30+31+30+31+31+30+i;
                      }
                      else if (newResult.monthnew == "November" && i<=30) {
                        totaldays = 31+29+31+30+31+30+31+31+30+31+i;
                      }
                      else if (newResult.monthnew == "December") {
                        totaldays = 31+29+31+30+31+30+31+31+30+31+30+i;
                      }
                      else {
                        print("Invalid Input");
                      }
                        print(totaldays);
                        AlertDialog(content: Text(totaldays));
                    }

                    )
              ],
            ))));

  }

  _ondayselect(String newday) {
    setState(() {
      this._currentday = newday;
    });
  }

  _onmonthselect(String newmonth) {
    setState(() {
      this._currentmonth = newmonth;
    });
  }

}

class FinalResult {

String daynew = '';
String monthnew = '';

}
