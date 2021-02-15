import 'package:flutter/material.dart';

import './../widgets/conversation_card.dart';
import './../widgets/newMessage.dart';

class Conversation extends StatelessWidget {
  static const routeName = '/conversations';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Oswald Cobbelpot',
          style: new TextStyle(
            color: Theme.of(context).primaryColor,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.info_outline,
              color: const Color(0xffdf193e),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: ConversationCard(),
            ),
            NewMessage(),
          ],
        ),
      ),
    );
  }
}
