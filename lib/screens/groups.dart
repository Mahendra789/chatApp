import 'package:flutter/material.dart';

import './../widgets/groups_card.dart';
import './../models/group.dart';

class Groups extends StatelessWidget {
  final List<Group> groupList = [
    Group(
      id: 'id1',
      name: 'Gothem City police Department',
      time: '5min ago',
      totalMember: '4 members',
      imageUrls: [
        'assets/images/user1.png',
        'assets/images/user2.png',
        'assets/images/user3.png',
        'assets/images/user4.png'
      ],
    ),
    Group(
      id: 'id2',
      name: 'Wayne Enterprices',
      time: '2days ago',
      totalMember: '5 members',
      imageUrls: [
        'assets/images/user5.png',
        'assets/images/user6.png',
        'assets/images/user7.png',
        'assets/images/user1.png',
        'assets/images/user2.png',
      ],
    ),
    Group(
      id: 'id3',
      name: 'SpaceX Organisation',
      time: '5days ago',
      totalMember: '5 members',
      imageUrls: [
        'assets/images/user2.png',
        'assets/images/user6.png',
        'assets/images/user1.png',
        'assets/images/user4.png',
        'assets/images/user3.png',
      ],
    ),
    Group(
      id: 'id4',
      name: 'Google Company',
      time: '1days ago',
      totalMember: '3 members',
      imageUrls: [
        'assets/images/user5.png',
        'assets/images/user3.png',
        'assets/images/user7.png',
      ],
    ),
    Group(
      id: 'id5',
      name: 'Linkedin Enterprices',
      time: '6days ago',
      totalMember: '5 members',
      imageUrls: [
        'assets/images/user6.png',
        'assets/images/user5.png',
        'assets/images/user2.png',
        'assets/images/user1.png',
        'assets/images/user7.png',
      ],
    ),
    Group(
      id: 'id6',
      name: 'Twitter Enterprices',
      time: '2days ago',
      totalMember: '5 members',
      imageUrls: [
        'assets/images/user5.png',
        'assets/images/user6.png',
        'assets/images/user7.png',
        'assets/images/user1.png',
        'assets/images/user2.png',
      ],
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Groups',
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
              child: ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: groupList
                    .map(
                      (group) => GroupsCard(
                        group: group,
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
