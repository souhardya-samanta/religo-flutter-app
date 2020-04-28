import 'package:ReliGo/final.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'custom.dart';
import 'package:flutter_page_transition/flutter_page_transition.dart';

class games extends StatefulWidget {
  @override
  _gamesState createState() => _gamesState();
}

class _gamesState extends State<games> {
  var checkbox1 = false;
  var checkbox2 = false;
  var checkbox3 = false;
  var checkbox4 = false;
  var checkbox5 = false;
  var checkbox6 = false;
  var checkbox7 = false;
  var checkbox8 = false;
  void checkboxChange1(bool val) {
    setState(() {
      checkbox1 = val;
    });
  }

  void checkboxChange2(bool val) {
    setState(() {
      checkbox2 = val;
    });
  }

  void checkboxChange3(bool val) {
    setState(() {
      checkbox3 = val;
    });
  }

  void checkboxChange4(bool val) {
    setState(() {
      checkbox4 = val;
    });
  }

  void checkboxChange5(bool val) {
    setState(() {
      checkbox5 = val;
    });
  }

  void checkboxChange6(bool val) {
    setState(() {
      checkbox6 = val;
    });
  }

  void checkboxChange7(bool val) {
    setState(() {
      checkbox7 = val;
    });
  }

  void checkboxChange8(bool val) {
    setState(() {
      checkbox8 = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.deepPurple[300],
                      Colors.indigo,
                      Color(0xFF398AE5),
                    ],
                    stops: [0.3, 0.6, 0.9],
                  ),
                ),
              ),
              Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 120.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Center(
                        child: new Text(
                          'Your Help',
                          style: TextStyle(
                            color: Colors.white70,
                            fontFamily: 'OpenSans',
                            fontSize: 50.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        'List of indoor games to help with',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OpenSans',
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 70.0,
                      ),
                      Container(
                        height: 80,
                        width: 300,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 6.0,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: CheckboxListTile(
                          onChanged: checkboxChange1,
                          value: checkbox1,
                          activeColor: Colors.indigo[700],
                          title: Text(
                            "Ludo & Snake-Ladder",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'OpenSans',
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            "Play with family",
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontFamily: 'OpenSans',
                              fontSize: 15.0,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          dense: false,
                          controlAffinity: ListTileControlAffinity.leading,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        height: 80,
                        width: 300,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 6.0,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: CheckboxListTile(
                          onChanged: checkboxChange2,
                          value: checkbox2,
                          activeColor: Colors.indigo[700],
                          title: Text(
                            "Carrom",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'OpenSans',
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            "Play with Family",
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontFamily: 'OpenSans',
                              fontSize: 15.0,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          dense: false,
                          controlAffinity: ListTileControlAffinity.leading,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        height: 80,
                        width: 300,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 6.0,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: CheckboxListTile(
                          onChanged: checkboxChange3,
                          value: checkbox3,
                          activeColor: Colors.indigo[700],
                          title: Text(
                            "Cards",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'OpenSans',
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            "Trump,Normal,UNO +more",
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontFamily: 'OpenSans',
                              fontSize: 15.0,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          dense: false,
                          controlAffinity: ListTileControlAffinity.leading,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        height: 80,
                        width: 300,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 6.0,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: CheckboxListTile(
                          onChanged: checkboxChange4,
                          value: checkbox4,
                          activeColor: Colors.indigo[700],
                          title: Text(
                            "Monopoly",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'OpenSans',
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            "Play with family",
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontFamily: 'OpenSans',
                              fontSize: 15.0,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          dense: false,
                          controlAffinity: ListTileControlAffinity.leading,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        height: 80,
                        width: 300,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 6.0,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: CheckboxListTile(
                          onChanged: checkboxChange5,
                          value: checkbox5,
                          activeColor: Colors.indigo[700],
                          title: Text(
                            "Chess",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'OpenSans',
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            "Two players",
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontFamily: 'OpenSans',
                              fontSize: 15.0,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          dense: false,
                          controlAffinity: ListTileControlAffinity.leading,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        height: 80,
                        width: 300,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 6.0,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: CheckboxListTile(
                          onChanged: checkboxChange6,
                          value: checkbox6,
                          activeColor: Colors.indigo[700],
                          title: Text(
                            "Checkers",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'OpenSans',
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            "Two players",
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontFamily: 'OpenSans',
                              fontSize: 15.0,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          dense: false,
                          controlAffinity: ListTileControlAffinity.leading,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        height: 80,
                        width: 300,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 6.0,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: CheckboxListTile(
                          onChanged: checkboxChange7,
                          value: checkbox7,
                          activeColor: Colors.indigo[700],
                          title: Text(
                            "Video Games",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'OpenSans',
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            "PC,PS,XBOX",
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontFamily: 'OpenSans',
                              fontSize: 15.0,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          dense: false,
                          controlAffinity: ListTileControlAffinity.leading,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        height: 80,
                        width: 300,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 6.0,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: CheckboxListTile(
                          onChanged: checkboxChange8,
                          value: checkbox8,
                          activeColor: Colors.indigo[700],
                          title: Text(
                            "Jigsaw Puzzle",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'OpenSans',
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            "Of all measurements",
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontFamily: 'OpenSans',
                              fontSize: 15.0,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          dense: false,
                          controlAffinity: ListTileControlAffinity.leading,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(30),
                        child: RaisedButton(
                          child: Center(
                            child: Text(
                              'DONATE',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ),
                          color: Colors.deepPurple[300],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          padding:
                              EdgeInsets.fromLTRB(100.0, 25.0, 100.0, 25.0),
                          onPressed: () {
                            Navigator.of(context).push(PageTransition(
                                type: PageTransitionType.rippleRightUp,
                                child: confirm()));
                            print("okay");
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(PageTransition(
              type: PageTransitionType.rippleRightUp, child: custom()));

          print("hhhh");
        },
        backgroundColor: Colors.indigo,
        child: Icon(Icons.add),
      ),
    );
  }
}
