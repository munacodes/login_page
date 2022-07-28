import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SuccessfulPage extends StatelessWidget {
  const SuccessfulPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(100.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(children: [
                Text(
                  "Successful",
                  style: TextStyle(
                      fontSize: 29.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
