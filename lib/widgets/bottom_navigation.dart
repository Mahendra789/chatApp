import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import './../screens/messages.dart';
import './../screens/groups.dart';
import './../screens/profile.dart';
import './../screens/contacts.dart';

class BottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            width: 20,
            color: const Color(0xffdf193e),
          ),
        ),
      ),
      child: CurvedNavigationBar(
        backgroundColor: const Color(0xffdf193e),
        items: <Widget>[
          new IconButton(
            icon: new Icon(Icons.message_outlined),
            color: Theme.of(context).primaryColor,
            onPressed: () {
              Navigator.of(context).pushNamed(Messages.routeName);
            },
          ),
          new IconButton(
            icon: new Icon(Icons.group_add_outlined),
            color: Theme.of(context).primaryColor,
            onPressed: () {
              Navigator.of(context).pushNamed(Groups.routeName);
            },
          ),
          new IconButton(
            icon: new Icon(Icons.add),
            color: Theme.of(context).primaryColor,
            onPressed: () {},
          ),
          new IconButton(
            icon: new Icon(Icons.list_alt_outlined),
            color: Theme.of(context).primaryColor,
            onPressed: () {
              Navigator.of(context).pushNamed(Contacts.routeName);
            },
          ),
          new IconButton(
            icon: new Icon(Icons.person),
            color: Theme.of(context).primaryColor,
            onPressed: () {
              Navigator.of(context).pushNamed(Profile.routeName);
            },
          ),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
    );
  }
}
