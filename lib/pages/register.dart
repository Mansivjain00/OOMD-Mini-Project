import 'package:flutter/material.dart';
import 'package:mini_project/pages/home_page.dart';
import 'package:mini_project/pages/login_page.dart';

import '../widgets/custom_input_fields.dart';
import '../widgets/rounded_button.dart';

class RegisterPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _RegisterPage();
  }
}

class _RegisterPage extends State<RegisterPage>{
  late double _deviceHeight;
  late double _deviceWidth;

  final _registerFormKey  = GlobalKey<FormState>();
  Widget build(BuildContext context){
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return _buildUI();
  }

  Widget _buildUI(){
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: _deviceWidth*0.03,
          vertical: _deviceHeight*0.02,
        ),
        height: _deviceHeight*0.98,
        width: _deviceWidth*0.97,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _pageTitle(),
            SizedBox(
              height: _deviceHeight*0.04,
            ),
            _registerForm(),
            SizedBox(
              height: _deviceHeight*0.02,
            ),
            _registerButton(),
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
        'Smart Home - Register',
        style: TextStyle(
          color: Colors.black54,
          fontSize: 30,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget _registerForm(){
    return Container(
      height: _deviceHeight*0.35,
      child: Form(
        key: _registerFormKey,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomTextFormField(
                onSaved: (_value){},
                hintText: "Name",
                obscureText: false,
            ),CustomTextFormField(
                onSaved: (_value){},
                hintText: "Email",
                obscureText: false,
            ),CustomTextFormField(
                onSaved: (_value){},
                hintText: "Password",
                obscureText: true,
            ),CustomTextFormField(
                onSaved: (_value){},
                hintText: "Forgot Password",
                obscureText: true,
            ),
          ],
        ),
      ),
    );
  }

  Widget _registerButton(){
    return GestureDetector(
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(
                builder:(context)=> HomePage()));
      },
      child: RoundedButton(
          name: "Register",
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
                builder:(context)=> LoginPage()));
      },
      child: Container(
        child: Text(
          'Already have an account? Login',
          style: TextStyle(
            color: Colors.blueAccent,
          ),
        ),
      ),
    );
  }
}