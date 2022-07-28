import 'package:flutter/material.dart';
import 'package:flutter_login/screens/login.dart';
import 'package:flutter_login/screens/submit_otp_page.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  child: ElevatedButton(
                    onPressed: () => Navigator.of(context).pop(
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ),
                    ),
                    child: Icon(Icons.arrow_back),
                  ),
                ),
                const Image(
                  image: AssetImage("assets/images/Designer_Flatline.png"),
                  width: 400,
                ),
                Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    "Forgot",
                    style:
                        TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
                  ),
                ]),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Password?",
                      style: TextStyle(
                          fontSize: 50.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "Don't worry! It happens. Please enter the address associated with your account.",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey[600]),
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Icon(Icons.alternate_email, color: Colors.grey),
                    SizedBox(width: 20.0),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Email ID / Mobile number"),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => SumbitOTPPage(),
                      ),
                    ),
                    child: Text("Submit"),
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
