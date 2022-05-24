import 'package:ethnography/helpers/appcolors.dart';
import 'package:flutter/material.dart';
import 'card.dart';
import 'map.dart';

class ChoiceChipDisplay extends StatefulWidget {
  const ChoiceChipDisplay({Key? key}) : super(key: key);

  @override
  _ChoiceChipDisplayState createState() => _ChoiceChipDisplayState();
}

class _ChoiceChipDisplayState extends State<ChoiceChipDisplay> {
  List<String> chipList = [
    "Recycled",
    "Vegetarian",
    "Skilled",
    "Energetic",
    "Friendly",
    "Luxurious"
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Material(
          color: Colors.white,
          elevation: 14.0,
          borderRadius: BorderRadius.circular(24.0),
          shadowColor: const Color(0x802196F3),
          child: Container(
            width: 380,
            height: 400,
            child: Column(
              children: <Widget>[
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  //color: new Color(0xffffc107),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: AppColors.blue5,
                  ),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Question 1',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Find the synonym of',
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Adroit',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 42.0,
                        fontWeight: FontWeight.w800),
                  ),
                ),
                Wrap(
                  spacing: 5.0,
                  runSpacing: 5.0,
                  children: <Widget>[
                    choiceChipWidget(chipList),
                  ],
                ),
                Wrap(
                  spacing: 50.0,
                  runSpacing: 5.0,
                 children: <Widget>[
                 Padding(
                  padding: const EdgeInsets.only(top: 32.0),
                  child: RaisedButton(
                      color: AppColors.blue5,
                      child: const Text(
                        'Back',
                        style: TextStyle(
                            color: Color(0xffffffff),
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => card()));
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0))),
                ),
                   Padding(
                     padding: const EdgeInsets.only(top: 32.0),
                     child: RaisedButton(
                         color: AppColors.blue5,
                         child: const Text(
                           'Next',
                           style: TextStyle(
                               color: Color(0xffffffff),
                               fontSize: 18.0,
                               fontWeight: FontWeight.bold),
                         ),
                         onPressed: () {
                           Navigator.push(
                               context,
                               MaterialPageRoute(
                                   builder: (context) => ChoiceChipDisplay2()));
                         },
                         shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(30.0))),
                   ),
          ]
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

class choiceChipWidget extends StatefulWidget {
  final List<String> reportList;

  choiceChipWidget(this.reportList);

  @override
  _choiceChipWidgetState createState() => new _choiceChipWidgetState();
}

class _choiceChipWidgetState extends State<choiceChipWidget> {
  String selectedChoice = "";

  _buildChoiceList() {
    List<Widget> choices = [] ;
    widget.reportList.forEach((item) {
      choices.add(Container(
        padding: const EdgeInsets.all(2.0),
        child: ChoiceChip(
          label: Text(item),
          labelStyle: const TextStyle(
              color: Colors.black, fontSize: 14.0, fontWeight: FontWeight.bold),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          backgroundColor: Color(0xffededed),
          selectedColor: AppColors.blue5,
          selected: selectedChoice == item,
          onSelected: (selected) {
            setState(() {
              selectedChoice = item;
            });
          },
        ),
      ));
    });
    return choices;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: _buildChoiceList(),
    );
  }
}

/*-------------------------------------*/

class ChoiceChipDisplay2 extends StatefulWidget {
  const ChoiceChipDisplay2({Key? key}) : super(key: key);

  @override
  _ChoiceChipDisplay2State createState() => _ChoiceChipDisplay2State();
}

class _ChoiceChipDisplay2State extends State<ChoiceChipDisplay2> {
  List<String> chipList = [
    "Recycled",
    "Vegetarian",
    "Skilled",
    "Energetic",
    "Friendly",
    "Luxurious"
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Material(
          color: Colors.white,
          elevation: 14.0,
          borderRadius: BorderRadius.circular(24.0),
          shadowColor: const Color(0x802196F3),
          child: Container(
            width: 380,
            height: 400,
            child: Column(
              children: <Widget>[
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  //color: new Color(0xffffc107),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: AppColors.blue5,
                  ),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Question 2',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Find the synonym of',
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Adroit',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 42.0,
                        fontWeight: FontWeight.w800),
                  ),
                ),
                Wrap(
                  spacing: 5.0,
                  runSpacing: 5.0,
                  children: <Widget>[
                    choiceChipWidget(chipList),
                  ],
                ),
                Wrap(
                    spacing: 50.0,
                    runSpacing: 5.0,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 32.0),
                        child: RaisedButton(
                            color: AppColors.blue5,
                            child: const Text(
                              'Back',
                              style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => card()));
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 32.0),
                        child: RaisedButton(
                            color: AppColors.blue5,
                            child: const Text(
                              'Next',
                              style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ChoiceChipDisplay3()));
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0))),
                      ),
                    ]
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

class choiceChipWidget2 extends StatefulWidget {
  final List<String> reportList;

  choiceChipWidget2(this.reportList);

  @override
  _choiceChipWidget2State createState() => new _choiceChipWidget2State();
}

class _choiceChipWidget2State extends State<choiceChipWidget2> {
  String selectedChoice = "";

  _buildChoiceList() {
    List<Widget> choices = [] ;
    widget.reportList.forEach((item) {
      choices.add(Container(
        padding: const EdgeInsets.all(2.0),
        child: ChoiceChip(
          label: Text(item),
          labelStyle: const TextStyle(
              color: Colors.black, fontSize: 14.0, fontWeight: FontWeight.bold),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          backgroundColor: const Color(0xffededed),
          selectedColor: AppColors.blue5,
          selected: selectedChoice == item,
          onSelected: (selected) {
            setState(() {
              selectedChoice = item;
            });
          },
        ),
      ));
    });
    return choices;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: _buildChoiceList(),
    );
  }
}



/*------------------------------------------------*/

class ChoiceChipDisplay3 extends StatefulWidget {
  const ChoiceChipDisplay3({Key? key}) : super(key: key);

  @override
  _ChoiceChipDisplay3State createState() => _ChoiceChipDisplay3State();
}

class _ChoiceChipDisplay3State extends State<ChoiceChipDisplay3> {
  List<String> chipList = [
    "Recycled",
    "Vegetarian",
    "Skilled",
    "Energetic",
    "Friendly",
    "Luxurious"
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Material(
          color: Colors.white,
          elevation: 14.0,
          borderRadius: BorderRadius.circular(24.0),
          shadowColor: const Color(0x802196F3),
          child: Container(
            width: 380,
            height: 400,
            child: Column(
              children: <Widget>[
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  //color: new Color(0xffffc107),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: AppColors.blue5,
                  ),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Question 3',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Find the synonym of',
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Adroit',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 42.0,
                        fontWeight: FontWeight.w800),
                  ),
                ),
                Wrap(
                  spacing: 5.0,
                  runSpacing: 5.0,
                  children: <Widget>[
                    choiceChipWidget(chipList),
                  ],
                ),
                Wrap(
                    spacing: 50.0,
                    runSpacing: 5.0,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 32.0),
                        child: RaisedButton(
                            color: AppColors.blue5,
                            child: const Text(
                              'Back',
                              style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => card()));
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 32.0),
                        child: RaisedButton(
                            color: AppColors.blue5,
                            child: const Text(
                              'Next',
                              style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ChoiceChipDisplay4()));
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0))),
                      ),
                    ]
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

class choiceChipWidget3 extends StatefulWidget {
  final List<String> reportList;

  choiceChipWidget3(this.reportList);

  @override
  _choiceChipWidget3State createState() => new _choiceChipWidget3State();
}

class _choiceChipWidget3State extends State<choiceChipWidget3> {
  String selectedChoice = "";

  _buildChoiceList() {
    List<Widget> choices = [] ;
    widget.reportList.forEach((item) {
      choices.add(Container(
        padding: const EdgeInsets.all(2.0),
        child: ChoiceChip(
          label: Text(item),
          labelStyle: const TextStyle(
              color: Colors.black, fontSize: 14.0, fontWeight: FontWeight.bold),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          backgroundColor: Color(0xffededed),
          selectedColor: AppColors.blue5,
          selected: selectedChoice == item,
          onSelected: (selected) {
            setState(() {
              selectedChoice = item;
            });
          },
        ),
      ));
    });
    return choices;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: _buildChoiceList(),
    );
  }
}

/*----------------------------------------------------------------------------*/

class ChoiceChipDisplay4 extends StatefulWidget {
  const ChoiceChipDisplay4({Key? key}) : super(key: key);

  @override
  _ChoiceChipDisplay4State createState() => _ChoiceChipDisplay4State();
}

class _ChoiceChipDisplay4State extends State<ChoiceChipDisplay4> {
  List<String> chipList = [
    "Recycled",
    "Vegetarian",
    "Skilled",
    "Energetic",
    "Friendly",
    "Luxurious"
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Material(
          color: Colors.white,
          elevation: 14.0,
          borderRadius: BorderRadius.circular(24.0),
          shadowColor: const Color(0x802196F3),
          child: Container(
            width: 380,
            height: 400,
            child: Column(
              children: <Widget>[
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  //color: new Color(0xffffc107),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: AppColors.blue5,
                  ),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Question 4',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Find the synonym of',
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Adroit',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 42.0,
                        fontWeight: FontWeight.w800),
                  ),
                ),
                Wrap(
                  spacing: 5.0,
                  runSpacing: 5.0,
                  children: <Widget>[
                    choiceChipWidget(chipList),
                  ],
                ),
                Wrap(
                    spacing: 50.0,
                    runSpacing: 5.0,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 32.0),
                        child: RaisedButton(
                            color: AppColors.blue5,
                            child: const Text(
                              'Back',
                              style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => card()));
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 32.0),
                        child: RaisedButton(
                            color: AppColors.blue5,
                            child: const Text(
                              'Next',
                              style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => map()));
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0))),
                      ),
                    ]
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

class choiceChipWidget4 extends StatefulWidget {
  final List<String> reportList;

  choiceChipWidget4(this.reportList);

  @override
  _choiceChipWidget4State createState() => new _choiceChipWidget4State();
}

class _choiceChipWidget4State extends State<choiceChipWidget4> {
  String selectedChoice = "";

  _buildChoiceList() {
    List<Widget> choices = [] ;
    widget.reportList.forEach((item) {
      choices.add(Container(
        padding: const EdgeInsets.all(2.0),
        child: ChoiceChip(
          label: Text(item),
          labelStyle: const TextStyle(
              color: Colors.black, fontSize: 14.0, fontWeight: FontWeight.bold),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          backgroundColor: Color(0xffededed),
          selectedColor: AppColors.blue5,
          selected: selectedChoice == item,
          onSelected: (selected) {
            setState(() {
              selectedChoice = item;
            });
          },
        ),
      ));
    });
    return choices;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: _buildChoiceList(),
    );
  }
}