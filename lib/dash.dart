import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'griddashboard.dart';
import 'package:flutter/services.dart';
import 'custom.dart';
import 'package:flutter_page_transition/flutter_page_transition.dart';
import 'screens/login_screen.dart';

class dash extends StatefulWidget {
  @override
  dashState createState() => new dashState();
}

class dashState extends State<dash> {
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
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 80,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16, right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Start Helping With",
                              style: GoogleFonts.openSans(
                                  textStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold)),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Home",
                              style: GoogleFonts.openSans(
                                  textStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600)),
                            ),
                          ],
                        ),
                        IconButton(
                          alignment: Alignment.topCenter,
                          icon: Image.asset(
                            "assets/notification.png",
                            width: 24,
                          ),
                          onPressed: () {
                            showAlertDialog(context);
                            print("HI");
                          },
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  GridDashboard(),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(PageTransition(
              type: PageTransitionType.rippleRightUp, child: custom()));

          print("custom");
        },
        backgroundColor: Colors.indigo,
        child: Icon(Icons.add_to_photos),
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // Create button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Hooray!"),
    content: Text("You have no new notifications"),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
