import 'package:flutter/material.dart';

import './../models/contact.dart';

class ContactCard extends StatefulWidget {
  const ContactCard({@required this.contact, @required this.isOnline});
  final Contact contact;
  final bool isOnline;

  @override
  _ContactCardState createState() => _ContactCardState();
}

class _ContactCardState extends State<ContactCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Dismissible(
          key: ValueKey(widget.contact.id),
          background: Container(
            color: const Color(0xffdf193e),
            child: Icon(
              Icons.delete,
              color: Colors.white,
              size: 20,
            ),
            alignment: Alignment.centerRight,
            padding: EdgeInsets.only(right: 20),
            margin: EdgeInsets.symmetric(horizontal: 5, vertical: 4),
          ),
          direction: DismissDirection.endToStart,
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 1,
                  color: const Color(0xffe8e8e8),
                ),
              ),
            ),
            child: ListTile(
              leading: CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage(widget.contact.imageUrl),
              ),
              title: Text(
                widget.contact.name,
                style: new TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 18,
                ),
              ),
              trailing: Wrap(
                spacing: 10,
                children: <Widget>[
                  Icon(Icons.info_outline),
                  Icon(Icons.message_outlined)
                ],
              ),
            ),
          ),
        ),
        if (widget.isOnline)
          Positioned(
            bottom: 15,
            left: 38,
            right: null,
            child: CircleAvatar(
              radius: 4,
              backgroundColor: Colors.green,
            ),
          ),
      ],
    );
  }
}
