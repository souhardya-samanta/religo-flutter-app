import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animation_set/widget/behavior_animations.dart';
import 'dash.dart';
import 'package:flutter_page_transition/flutter_page_transition.dart';

class confirm extends StatefulWidget {
  @override
  _confirmState createState() => _confirmState();
}

class _confirmState extends State<confirm> {
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
                        child: Text(
                          'Thank You!',
                          style: TextStyle(
                            color: Colors.white70,
                            fontFamily: 'OpenSans',
                            fontSize: 50.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'for using ReliGo',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OpenSans',
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      Center(
                        child: YYLove(),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        'Your gratitude has been noted',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OpenSans',
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Center(
                        child: Text(
                          'We will get back to you shortly!',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'OpenSans',
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 150,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "**Empty submissions will be rejected",
                          style: TextStyle(color: Colors.white30),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "If missed, go to HOME page",
                          style: TextStyle(color: Colors.white30),
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
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context).push(PageTransition(
              type: PageTransitionType.rippleRightUp, child: dash()));

          print("home");
        },
        backgroundColor: Colors.indigo,
        icon: Icon(Icons.home),
        label: Text('Home'),
      ),
    );
  }
}
