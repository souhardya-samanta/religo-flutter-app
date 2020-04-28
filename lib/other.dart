import 'package:ReliGo/final.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_page_transition/flutter_page_transition.dart';

class other extends StatelessWidget {
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
                          'Other Payment Modes',
                          style: TextStyle(
                            color: Colors.white70,
                            fontFamily: 'OpenSans',
                            fontSize: 31.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Please mention below',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OpenSans',
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 90,
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.all(25.0),
                          child: TextField(
                            maxLines: 10,
                            decoration: InputDecoration.collapsed(
                                hintText:
                                    "Briefly describe your mode of transaction and amount here"),
                          ),
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
                          color: Colors.indigo,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          padding:
                              EdgeInsets.fromLTRB(100.0, 25.0, 100.0, 25.0),
                          onPressed: () {
                            Navigator.of(context).push(PageTransition(
                                type: PageTransitionType.rippleRightUp,
                                child: confirm()));
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
    );
  }
}
