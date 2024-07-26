import 'package:flutter/material.dart';
import 'package:log_in/Widgets/Title.dart';
import 'package:log_in/Widgets/loginNavigate.dart';
import '../Widgets/ContainerWidget.dart';

class Login extends StatefulWidget {
  const Login({super.key});

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
        title: const TitleText(
          text: 'Sign in',
        ),
        backgroundColor: Colors.cyan,
      ),
      body: SingleChildScrollView(// Wrap the body with SingleChildScrollView
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min, // Ensure the Column takes minimal space
            children: [
              const SizedBox(height: 90,),
              const TitleText(
                text: 'Welcome Broder',
                fontSize: 25,
              ),
              const SizedBox(height: 80,),
              FromConteinerWidget(
                controller: _emailController,
                hintText: "Email",
                isPasswordField: false,
              ),
              const SizedBox(height: 15,),
              FromConteinerWidget(
                controller: _passwordController,
                hintText: "Password",
                isPasswordField: true,
              ),
              const SizedBox(height: 50,),
              MaterialButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Not Available yet'),
                      duration: Duration(seconds: 2),
                    ),
                  );
                },
                color: Colors.cyan,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Border radius
                ),
                child: const Text('Login'),
              ),
              const SizedBox(height: 40,),
              const navRow(fText: 'Do you forgot your Password?', sText: 'Reset now'),
              const SizedBox(height: 15,),
              const navRow(fText: 'Don\'t have an Account?', sText: 'Sign up')
            ],
          ),
        ),
      ),
    );
  }
}