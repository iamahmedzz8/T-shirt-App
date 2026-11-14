import 'package:flutter/material.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child:SingleChildScrollView(
            child: Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 30,vertical: 20),
              child: Center(
                child: Column(
                  children: [
                    Image.asset("assets/images/Screenshot 2026-10-13 191957.png",
                      width: 100,
                      height: 150,
                    ),
                    Text("Create New Account",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
                    ),
                    SizedBox(height: 10,),
                    Text("Log in to your account using email\n or social networks",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                    ),
                  ],
                ),
              ),
            ),
          ),
      ),
    );
  }
}
