import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import './../screens/messages.dart';
import './../screens/groups.dart';
import './../screens/profile.dart';
import './../screens/contacts.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
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
          Icon(Icons.message_outlined, size: 30),
          Icon(Icons.group_add_outlined, size: 30),
          Icon(Icons.list_alt_outlined, size: 30),
          Icon(Icons.person, size: 30),
        ],
        onTap: (index) {
          setState(() {
            if (index == 0) {
              Navigator.of(context).pushNamed(Messages.routeName);
            } else if (index == 1) {
              Navigator.of(context).pushNamed(Groups.routeName);
            } else if (index == 2) {
              Navigator.of(context).pushNamed(Contacts.routeName);
            } else {
              Navigator.of(context).pushNamed(Profile.routeName);
            }
          });
        },
      ),
    );
  }
}
