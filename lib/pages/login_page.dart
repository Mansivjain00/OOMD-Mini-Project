
import 'package:flutter/material.dart';
import 'package:mini_project/pages/home_page.dart';
import 'package:mini_project/pages/register.dart';

import '../widgets/custom_input_fields.dart';
import '../widgets/rounded_button.dart';

class LoginPage extends StatefulWidget {
  State<StatefulWidget> createState(){
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage>{

  late double _deviceHeight;
  late double _deviceWidth;

  final _loginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return _buildUI();
  }

  Widget _buildUI(){
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: _deviceWidth * 0.03,
          vertical: _deviceHeight * 0.02,
        ),
        height: _deviceHeight * 0.98,
        width: _deviceWidth * 0.97,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _pageTitle(),
            SizedBox(
              height: _deviceHeight*0.04,
            ),
            _loginForm(),
            SizedBox(
              height: _deviceHeight*0.04,
            ),
            _loginButton(),
            SizedBox(
              height: _deviceHeight*0.02,
            ),
            _registerAccountLink(),
          ],
        ),
      ),
    );

  }
  Widget _pageTitle(){
    return Container(
      height: _deviceHeight*0.10,
      child: Text(
          'Smart Home - Login',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 30,
                fontWeight: FontWeight.w600,
      ),
      ),
    );
  }

  Widget _loginForm(){
    return Container(

      height: _deviceHeight*0.18,
      child: Form(
        key: _loginFormKey,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomTextFormField(
                onSaved: (_value){},
                hintText: "Username",
                obscureText: false
            ),
            CustomTextFormField(
                onSaved: (_value){},
                hintText: "Password",
                obscureText: true,
            ),

          ],
        ),
      ),
    );
  }
  Widget _loginButton(){
    return  GestureDetector(
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(
                builder:(context)=> HomePage()));
      },
      child: RoundedButton(
            name: 'Login',
            height: _deviceHeight*0.065,
            width: _deviceWidth*0.65,
        ),
    );
  }

  Widget _registerAccountLink(){
    return GestureDetector(
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(
                builder:(context)=> RegisterPage()));
      },
      child: Container(
        child: Text(
          'Dont have an account? Register',
              style: TextStyle(
            color: Colors.blueAccent,
        ),
        ),
      ),
    );
  }
}