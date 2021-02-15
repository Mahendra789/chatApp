import 'package:flutter/material.dart';

import './../widgets/contact_card.dart';
import './../models/contact.dart';
import './../widgets/bottom_navigation.dart';

class Contacts extends StatelessWidget {
  static const routeName = '/contacts';

  final List<Contact> onlineContacts = [
    Contact(
      id: 'id1',
      name: 'Oswald Collepot',
      imageUrl: 'assets/images/user1.png',
    ),
    Contact(
      id: 'id2',
      name: 'Fish Mooney',
      imageUrl: 'assets/images/user2.png',
    ),
    Contact(
      id: 'id3',
      name: 'Hymes Reloke',
      imageUrl: 'assets/images/user3.png',
    ),
    Contact(
      id: 'id4',
      name: 'Barbara Kean',
      imageUrl: 'assets/images/user4.png',
    ),
    Contact(
      id: 'id5',
      name: 'Edward naymgma',
      imageUrl: 'assets/images/user5.png',
    ),
  ];

  final List<Contact> others = [
    Contact(
      id: 'id6',
      name: 'Selina Kyle',
      imageUrl: 'assets/images/user6.png',
    ),
    Contact(
      id: 'id7',
      name: 'Hervey Roamsde',
      imageUrl: 'assets/images/user7.png',
    ),
    Contact(
      id: 'id3',
      name: 'Hymes Reloke',
      imageUrl: 'assets/images/user3.png',
    ),
    Contact(
      id: 'id4',
      name: 'Barbara Kean',
      imageUrl: 'assets/images/user4.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigation(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Contact',
          style: TextStyle(
            color: Theme.of(context).primaryColor,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.add,
              color: const Color(0xffdf193e),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              height: 60,
              decoration: BoxDecoration(
                color: const Color(0xffe0e0e0),
              ),
              child: TextField(
                autocorrect: true,
                textCapitalization: TextCapitalization.sentences,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8.0),
                      ),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8.0),
                      ),
                      borderSide: BorderSide.none,
                    ),
                    labelText: 'Search friends...',
                    prefixIcon: Icon(Icons.search)),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              decoration: BoxDecoration(
                color: const Color(0xfff3f3f3),
                border: Border(
                  bottom: BorderSide(
                    width: 1,
                    color: const Color(0xffe8e8e8),
                  ),
                ),
              ),
              child: Row(
                children: <Widget>[
                  Text(
                    'Online(',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    '5',
                    style: TextStyle(
                      color: const Color(0xffdf193e),
                    ),
                  ),
                  Text(
                    ')',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: onlineContacts
                    .map((contact) =>
                        ContactCard(contact: contact, isOnline: true))
                    .toList(),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              decoration: BoxDecoration(
                color: const Color(0xfff3f3f3),
                border: Border(
                  bottom: BorderSide(
                    width: 1,
                    color: const Color(0xffe8e8e8),
                  ),
                ),
              ),
              child: Row(
                children: <Widget>[
                  Text(
                    'Others',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: onlineContacts
                    .map((contact) =>
                        ContactCard(contact: contact, isOnline: false))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
