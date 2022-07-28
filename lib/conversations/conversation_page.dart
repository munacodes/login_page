import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter_login/conversations/conversation_page.dart';

class ConversationPage extends StatelessWidget {
  const ConversationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Conversation",
          style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SafeArea(
            child: Container(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start, children: []),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
