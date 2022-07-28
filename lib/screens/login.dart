import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/conversations/conversation_page.dart';

import 'forgot_password_page.dart';
import 'submit_otp_page.dart';
import 'reset_password_page.dart';
import 'successful_page.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Image(
                  image: AssetImage("assets/images/Designer_Flatline.png"),
                  width: 400,
                ),
                const SizedBox(height: 10.0),
                const Text(
                  "Login",
                  style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10.0),
                Row(
                  children: const [
                    Icon(
                      Icons.alternate_email,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(hintText: "Email ID"),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10.0),
                Row(
                  children: const [
                    Icon(
                      Icons.lock_open_sharp,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Password",
                          suffixIcon: Icon(Icons.remove_red_eye_outlined),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ForgotPasswordPage(),
                        ),
                      ),
                      child: const Text(
                        "Forgot Password?",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10.0),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ConversationPage(),
                      ),
                    ),
                    child: Text("Login"),
                  ),
                ),
                const SizedBox(height: 10.0),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 1.0,
                        color: Colors.grey[300],
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    const Text("OR"),
                    const SizedBox(width: 10.0),
                    Expanded(
                      child: Container(
                        height: 1.0,
                        color: Colors.grey[300],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10.0),
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(20.0),
                  splashColor: Colors.green,
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 10.0,
                    ),
                    child: Row(
                      children: const [
                        Icon(Icons.email),
                        Expanded(
                          child: Center(
                            child: Text(
                              "Login with Google",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: "New to Logistics? ",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                      children: [
                        TextSpan(
                          text: "Login ",
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => print('Tap Here onTap'),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
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
      ),
    );
  }
}
