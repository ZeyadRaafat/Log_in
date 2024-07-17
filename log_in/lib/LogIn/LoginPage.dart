import 'package:flutter/material.dart';
import 'ContainerWidget.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign in',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.cyan,
      ),
      body: SingleChildScrollView(// Wrap the body with SingleChildScrollView
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min, // Ensure the Column takes minimal space
            children: [
              SizedBox(height: 90,),
              Text(
                'Welcome Broder',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 80,),
              FromConteinerWidget(
                controller: _emailController,
                hintText: "Email",
                isPasswordField: false,
              ),
              SizedBox(height: 15,),
              FromConteinerWidget(
                controller: _passwordController,
                hintText: "Password",
                isPasswordField: true,
              ),
              SizedBox(height: 50,),
              MaterialButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Not Available yet'),
                      duration: Duration(seconds: 2),
                    ),
                  );
                },
                child: Text('Login'),
                color: Colors.cyan,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Border radius
                ),
              ),
              SizedBox(height: 40,),
              Row(
                children: [
                  SizedBox(width: 80,),
                  Text('Do you Forget your Password?'),
                  SizedBox(width: 8,),
                  GestureDetector(
                    child: Text(
                      'Reset now',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  SizedBox(width: 110,),
                  Text('Don\'t have an Account?'),
                  SizedBox(width: 8,),
                  GestureDetector(
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}