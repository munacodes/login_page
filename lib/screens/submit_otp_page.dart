import 'package:flutter/material.dart';
import 'package:flutter_login/screens/forgot_password_page.dart';
import 'package:flutter_login/screens/login.dart';
import 'package:flutter_login/screens/reset_password_page.dart';

class SumbitOTPPage extends StatelessWidget {
  const SumbitOTPPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                child: ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(
                    MaterialPageRoute(
                      builder: (context) => ForgotPasswordPage(),
                    ),
                  ),
                  child: Icon(Icons.arrow_back),
                ),
              ),
              const Image(
                image: AssetImage("assets/images/Designer_Flatline.png"),
                width: 400,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Enter OTP",
                    style:
                        TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(height: 20.0),
              Row(
                children: [
                  Text(
                    "A 4 digit code has been sent to +2348026604210",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: ("Enter Code"),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    SizedBox(
                      height: 60.0,
                      child: ElevatedButton(
                        onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => ResetPasswordPage(),
                          ),
                        ),
                        child: Icon(Icons.boy_rounded),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
