import 'package:flutter/material.dart';
import 'package:ReliGo/screens/login_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'books.dart';
import 'food.dart';
import 'health.dart';
import 'money.dart';
import 'games.dart';
import 'package:flutter_page_transition/flutter_page_transition.dart';
import 'main.dart';

class GridDashboard extends StatefulWidget {
  @override
  _GridDashboardState createState() => _GridDashboardState();
}

class _GridDashboardState extends State<GridDashboard> {
  Items item1 = new Items(
      title: "Books",
      subtitle: "Click below to",
      event: "HELP WITH BOOKS",
      img: "assets/book.png");

  Items item2 = new Items(
    title: "Groceries",
    subtitle: "Click below to",
    event: "HELP WITH GROCERIES",
    img: "assets/food.png",
  );

  Items item3 = new Items(
    title: "Money",
    subtitle: "Click below to",
    event: "DONATE MONEY",
    img: "assets/money.png",
  );

  Items item4 = new Items(
    title: "Indoor Games",
    subtitle: "Click below to",
    event: "HELP WITH GAMES",
    img: "assets/indoor.png",
  );

  Items item5 = new Items(
    title: "Health Products",
    subtitle: "Click below to",
    event: "HELP WITH MEDICINE",
    img: "assets/health.png",
  );

  Items item6 = new Items(
    title: "Thanks",
    subtitle: "Click below to",
    event: "LOG OUT",
    img: "assets/logout.png",
  );

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4, item5, item6];
    var color = 0xff453658;
    return Flexible(
      child: GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(left: 16, right: 16),
          crossAxisCount: 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: myList.map((data) {
            return Container(
              decoration: BoxDecoration(
                  color: Colors.indigo[200],
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    data.img,
                    width: 42,
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    data.title,
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    data.subtitle,
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.white38,
                            fontSize: 13,
                            fontWeight: FontWeight.w600)),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  GestureDetector(
                    onTap: () {
                      if (data.event == "HELP WITH BOOKS") {
                        print("books");
                        Navigator.of(context).push(PageTransition(
                            type: PageTransitionType.rippleRightUp,
                            child: books()));
                      } else if (data.event == "HELP WITH GROCERIES") {
                        Navigator.of(context).push(PageTransition(
                            type: PageTransitionType.rippleRightUp,
                            child: food()));
                        print("foods");
                      } else if (data.event == "DONATE MONEY") {
                        Navigator.of(context).push(PageTransition(
                            type: PageTransitionType.rippleRightUp,
                            child: money()));
                        print("money");
                      } else if (data.event == "HELP WITH GAMES") {
                        Navigator.of(context).push(PageTransition(
                            type: PageTransitionType.rippleRightUp,
                            child: games()));
                        print("games");
                      } else if (data.event == "HELP WITH MEDICINE") {
                        Navigator.of(context).push(PageTransition(
                            type: PageTransitionType.rippleRightUp,
                            child: health()));
                        print("health");
                      } else if (data.event == "LOG OUT") {
                        Navigator.of(context).push(PageTransition(
                            type: PageTransitionType.rippleRightUp,
                            child: LoginScreen()));
                        print("thanks");
                      }
                    },
                    child: Text(
                      data.event,
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.white70,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }).toList()),
    );
  }
}

class Items {
  String title;
  String subtitle;
  String event;
  String img;
  Items({this.title, this.subtitle, this.event, this.img});
}
