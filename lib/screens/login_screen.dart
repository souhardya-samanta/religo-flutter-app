import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ReliGo/dash.dart';
import 'package:ReliGo/utilities/constants.dart';
import '../utilities/constants.dart';
import 'package:the_validator/the_validator.dart';
import 'package:flutter_page_transition/flutter_page_transition.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool passwordVisible;
  void initState() {
    passwordVisible = true;
  }

  bool _rememberMe = false;

  final _formKey = GlobalKey<FormState>();
  final _formKey2 = GlobalKey<FormState>();
  Widget _buildEmailTF() {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Email',
            style: kLabelStyle,
          ),
          SizedBox(height: 10.0),
          Container(
            alignment: Alignment.centerLeft,
            decoration: kBoxDecorationStyle,
            height: 60.0,
            child: TextFormField(
              validator: FieldValidator.email(),
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'OpenSans',
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14.0),
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.black,
                ),
                hintText: 'Enter your Email',
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPasswordTF() {
    return Form(
      key: _formKey2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Password',
            style: kLabelStyle,
          ),
          SizedBox(height: 10.0),
          Container(
            alignment: Alignment.centerLeft,
            decoration: kBoxDecorationStyle,
            height: 60.0,
            child: TextFormField(
              obscureText: passwordVisible,
              validator: FieldValidator.password(
                  minLength: 8,
                  shouldContainNumber: true,
                  shouldContainCapitalLetter: true,
                  shouldContainSpecialChars: true,
                  errorMessage: "Password must match the required format",
                  isNumberNotPresent: () {
                    return "Password must contain number";
                  },
                  isSpecialCharsNotPresent: () {
                    return "Password must contain special characters";
                  },
                  isCapitalLetterNotPresent: () {
                    return "Password must contain capital letters";
                  }),
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'OpenSans',
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14.0),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.black,
                ),
                hintText: 'Enter your Password',
                suffixIcon: IconButton(
                  icon: Icon(
                    // Based on passwordVisible state choose the icon
                    passwordVisible ? Icons.visibility : Icons.visibility_off,
                    color: Theme.of(context).primaryColorDark,
                  ),
                  onPressed: () {
                    setState(() {
                      passwordVisible = !passwordVisible;
                    });
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildForgotPasswordBtn() {
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: () {
          return Alert(
              title: 'Oops!',
              context: context,
              desc:
                  'We will get back to you shortly. You can Sign Up as Guest till then. ',
              buttons: [
                DialogButton(
                  child: Text(
                    'OK',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.deepPurple[300],
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ]).show();
          print('Forgot Password Button Pressed');
        },
        padding: EdgeInsets.only(right: 0.0),
        child: Text(
          'Forgot Password?',
          style: kLabelStyle,
        ),
      ),
    );
  }

  Widget _buildRememberMeCheckbox() {
    return Container(
      height: 20.0,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
              value: _rememberMe,
              checkColor: Colors.green,
              activeColor: Colors.white,
              onChanged: (value) {
                setState(() {
                  _rememberMe = value;
                });
              },
            ),
          ),
          Text(
            'Remember me',
            style: kLabelStyle,
          ),
        ],
      ),
    );
  }

  Widget _buildLoginBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () {
          // Validate returns true if the form is valid, otherwise false.
          if (_formKey.currentState.validate() &&
              _formKey2.currentState.validate()) {
            Navigator.of(context).push(PageTransition(
                type: PageTransitionType.rippleRightUp, child: dash()));
            ;
          }
        },
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.deepPurple[200],
        child: Text(
          'LOGIN',
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }

  Widget _buildSignInWithText() {
    return Column(
      children: <Widget>[
        Text(
          '- OR -',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 20.0),
        Text(
          'Sign in with',
          style: kLabelStyle,
        ),
      ],
    );
  }

  Widget _buildSocialBtn(Function onTap, AssetImage logo) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, 2),
              blurRadius: 6.0,
            ),
          ],
          image: DecorationImage(
            image: logo,
          ),
        ),
      ),
    );
  }

  Widget _buildSocialBtnRow() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildSocialBtn(
            () {
              return Alert(
                  title: 'ReliGo linked to Facebook',
                  context: context,
                  desc:
                      'E-mail: religo4help@facebook.com Password: reliGo@fb@1369_',
                  buttons: [
                    DialogButton(
                      child: Text(
                        'OK',
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.deepPurple[300],
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    )
                  ]).show();
            },
            AssetImage(
              'assets/logos/facebook.jpg',
            ),
          ),
          _buildSocialBtn(
            () {
              return Alert(
                title: 'ReliGo linked to Google',
                context: context,
                desc: 'E-mail: religo4help@gmail.com Password: relGo@Gm1234!@',
                buttons: [
                  DialogButton(
                    child: Text(
                      'OK',
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.deepPurple[300],
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )
                ],
              ).show();
            },
            AssetImage(
              'assets/logos/google1.png',
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSignupBtn() {
    return GestureDetector(
      onTap: () {
        return Alert(
            title: 'Guest Login',
            context: context,
            desc: 'E- mail: guest4help@religo.com Password: hElP@@123!',
            buttons: [
              DialogButton(
                child: Text(
                  'OK',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.deepPurple[300],
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ]).show();
        print('Sign Up Button Pressed');
      },
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Don\'t have an Account? ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            TextSpan(
              text: 'Sign Up as Guest',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
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
                      Text(
                        'ReliGo',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OpenSans',
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Relief on the Go',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OpenSans',
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 30.0),
                      _buildEmailTF(),
                      SizedBox(
                        height: 30.0,
                      ),
                      _buildPasswordTF(),
                      _buildForgotPasswordBtn(),
                      _buildRememberMeCheckbox(),
                      _buildLoginBtn(),
                      _buildSignInWithText(),
                      _buildSocialBtnRow(),
                      SizedBox(
                        height: 5,
                      ),
                      _buildSignupBtn(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
