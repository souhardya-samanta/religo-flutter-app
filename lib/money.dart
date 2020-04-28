import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_credit_card/credit_card_model.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'final.dart';
import 'package:ReliGo/other.dart';
import 'package:flutter_page_transition/flutter_page_transition.dart';

class money extends StatefulWidget {
  @override
  _moneyState createState() => _moneyState();
}

class _moneyState extends State<money> {
  String cardNumber = '';

  String expiryDate = '';

  String cardHolderName = '';

  String cvvCode = '';

  bool isCvvFocused = false;

  void onCreditCardModelChange(CreditCardModel creditCardModel) {
    setState(() {
      cardNumber = creditCardModel.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cardHolderName = creditCardModel.cardHolderName;
      cvvCode = creditCardModel.cvvCode;
      isCvvFocused = creditCardModel.isCvvFocused;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
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
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Amount of contribution',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OpenSans',
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: CreditCardWidget(
                          cardNumber: cardNumber,
                          expiryDate: expiryDate,
                          cardHolderName: cardHolderName,
                          cvvCode: cvvCode,
                          showBackView: isCvvFocused,
                          height: 175,
                          textStyle: TextStyle(color: Colors.deepPurple[200]),
                          width: MediaQuery.of(context).size.width,
                          animationDuration: Duration(milliseconds: 1000),
                        ),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Container(
                        height: 355,
                        width: 700,
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
                        child: Center(
                          child: CreditCardForm(
                            onCreditCardModelChange: onCreditCardModelChange,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        child: TextField(
                          decoration: new InputDecoration(
                            border: new OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(50.0),
                              ),
                            ),
                            filled: true,
                            hintStyle: new TextStyle(
                              color: Colors.black54,
                            ),
                            hintText: "Amount in ₹",
                            fillColor: Colors.white,
                          ),
                          keyboardType: TextInputType.number,
                        ),
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
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
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context).push(PageTransition(
              type: PageTransitionType.rippleRightUp, child: other()));
          print("hhhh");
        },
        backgroundColor: Colors.indigo,
        icon: Icon(Icons.payment),
        label: Text('Others'),
      ),
    );
  }
}
