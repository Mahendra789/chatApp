import 'package:flutter/material.dart';

import './../models/chat.dart';
import './../screens/conversation.dart';

class MessageCard extends StatefulWidget {
  const MessageCard({@required this.chat});

  final Chat chat;

  @override
  _MessageCardState createState() => _MessageCardState();
}

class _MessageCardState extends State<MessageCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Dismissible(
          key: ValueKey(widget.chat.id),
          background: Container(
            color: const Color(0xffdf193e),
            child: Icon(
              Icons.delete,
              color: Colors.white,
              size: 20,
            ),
            alignment: Alignment.centerRight,
            padding: EdgeInsets.only(right: 20),
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 4),
          ),
          direction: DismissDirection.endToStart,
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(widget.chat.imageUrl),
              ),
              title: Text(
                widget.chat.name,
                style: new TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 18,
                ),
              ),
              subtitle: Text(
                widget.chat.message,
                style: new TextStyle(
                  color: Theme.of(context).primaryColorLight,
                  fontSize: 12,
                ),
              ),
              trailing: Text(
                widget.chat.time,
                style: new TextStyle(
                  color: Theme.of(context).primaryColorLight,
                  fontSize: 16,
                ),
              ),
              onTap: () {
                Navigator.of(context).pushNamed(Conversation.routeName);
              },
            ),
          ),
        ),
        if (widget.chat.id == 'id2' ||
            widget.chat.id == 'id5' ||
            widget.chat.id == 'id7')
          Positioned(
            bottom: 15,
            left: 57,
            right: null,
            child: CircleAvatar(
              radius: 6,
              backgroundColor: Colors.green,
            ),
          ),
      ],
    );
  }
}
