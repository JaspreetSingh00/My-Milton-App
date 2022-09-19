import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mymilton/utilities/constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);


  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  Widget _buildEmailTF(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(height: 10.0,),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: const TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
                color: Color(0xFF535151),
                fontFamily: 'OpenSans'
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0, bottom: 14.0, left: 20.0),
              hintText: 'Email',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPasswordTF(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(height: 10.0,),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: const TextField(
            obscureText: true,
            keyboardType: TextInputType.emailAddress,
            autocorrect: false,
            style: TextStyle(
              color: Color(0xFF535151),
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0, bottom: 14.0, left: 20.0),
              hintText: 'Password',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildForgotPasswordBtn() {
    return Container(alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () => print ('forgot Password Button Pressed'),
        style: TextButton.styleFrom(
          padding: const EdgeInsets.only(right: 0.0),
        ),
        child: const Text(
          'Forgot Password?',
          style: kLabelStyle,
        ),
      ),
    );
  }

  Widget _buildSignInBtn(){
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 25.0),
        // width: double.infinity,
        child: ElevatedButton(
          child: const Text(
            "SIGN IN",
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 1.5,
              fontSize: 15.0,
              // fontWeight: FontWeight.bold,
              fontFamily: 'OpenSans',
            ),
          ),
          style: ElevatedButton.styleFrom(
            primary : Color(0xFF10073AE).withOpacity(0.54),
            elevation: 5.0,
            padding: const EdgeInsets.fromLTRB(60.0, 25.0, 60.0, 25.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),


          ),
          onPressed: () => print('Login Button Pressed'),


        )
    );
  }

  Widget _buildSocialBtn(Function onTap, AssetImage logo){
    return GestureDetector(
      onTap: onTap(),
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(0,2),
                blurRadius: 6.0,
              ),
            ],
            image: DecorationImage(
              image: logo,

            )
        ),
      ),
    );
  }

  Widget _buildContinueAsGuest(){
    return Container(alignment: Alignment.center,
      child: TextButton(
        onPressed: () => print ('continue as guest Button Pressed'),
        style: TextButton.styleFrom(
          padding: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
        ),
        child: RichText(
          text: TextSpan (children: <TextSpan>[
            TextSpan(
              text: 'Continue as a ',
              style: kLabelStyle ),
            TextSpan(
              text: "Guest",
              style: TextStyle(
                color: Color(0xFF0073AE).withOpacity(0.54),
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ), ),
          ],
          ),
        ),
      ),
    );
  }

  Widget _buildSignInWithText(){
    return Column(
      children: const <Widget>[
        Text(
          '- OR -',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 20.0),
        Text('Sign in with', style: kLabelStyle,)
      ],
    );
  }

  Widget _buildSocialBtnRow(){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildSocialBtn(
                () => print('Login with Facebook'),
            AssetImage('assets/logos/facebook.png'),
          ),
          _buildSocialBtn(
                () => print('Login with Google'),
            AssetImage('assets/logos/google.png'),
          ),
        ],
      ),
    );
  }

  Widget _buildSignUpBtn(){
    return GestureDetector(
      onTap: () => print('Sign up Button Pressed'),
      child: RichText(
          text: TextSpan(
            children: [
              const TextSpan(
                text: 'Don\'t have an account?  ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: 'Sign Up',
                style: TextStyle(
                  color: Color(0xFF0073AE).withOpacity(0.54),
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )
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
          child: Stack(children: <Widget>[

            Container(height: double.infinity, width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white70,
            ),
            ),

            Container(
              height: double.infinity,
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(
                  horizontal: 40.0,
                  vertical: 40.0,
                ),

                child: Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.fromLTRB(0, 25.0, 0, 5.0),
                      child: const Image(
                        image: AssetImage('assets/logos/mymilton.png'),
                        width: 250.0,
                        height: 250.0,
                      ),
                    ),
                    const SizedBox(height: 30.0),
                    _buildEmailTF(),
                    const SizedBox(
                      height: 15.0,
                    ),
                  _buildPasswordTF(),
                  _buildForgotPasswordBtn(),
                  _buildSignInBtn(),
                  _buildContinueAsGuest(),
                    const SizedBox(
                      height: 35.0,
                    ),
                  // _buildSignInWithText(),
                  // _buildSocialBtnRow(),
                  _buildSignUpBtn(),


                ],),
              ),
            )
          ],
          ),
        ),
      ),
    );
  }
}