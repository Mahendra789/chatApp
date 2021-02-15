import 'package:flutter/material.dart';

import './../widgets/profile_card.dart';
import './../models/profileCardDetails.dart';
import './../widgets/bottom_navigation.dart';

class Profile extends StatelessWidget {
  static const routeName = '/profile';

  final List<ProfileCardDetails> profileCardDetailsList = [
    ProfileCardDetails(
      id: 'id1',
      name: 'Email Address',
      value: 'johndoe@gmail.com',
    ),
    ProfileCardDetails(
      id: 'id2',
      name: 'Mobile Number',
      value: '987 654 3210',
    ),
    ProfileCardDetails(
      id: 'id3',
      name: 'Notifications',
      value: '',
    ),
    ProfileCardDetails(
      id: 'id4',
      name: 'Settings',
      value: '',
    ),
    ProfileCardDetails(
      id: 'id5',
      name: 'Feedback',
      value: '',
    ),
    ProfileCardDetails(
      id: 'id6',
      name: 'Help',
      value: '',
    ),
    ProfileCardDetails(
      id: 'id7',
      name: 'Delete',
      value: '',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigation(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffdf193e),
        title: Text(
          'Edit',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.logout,
              color: Colors.white,
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
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.1, 0.9],
                  colors: [const Color(0xffdf193e), const Color(0xffeb402c)],
                ),
              ),
              padding:
                  EdgeInsets.only(top: 10, bottom: 50, left: 20, right: 20),
              alignment: Alignment.center,
              child: Column(
                children: <Widget>[
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/user1.png'),
                  ),
                  SizedBox(height: 25),
                  Text(
                    'John Doe',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Container(
                child: ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: profileCardDetailsList
                  .map((profile) => ProfileCard(
                        profile: profile,
                      ))
                  .toList(),
            )),
          ],
        ),
      ),
    );
  }
}
