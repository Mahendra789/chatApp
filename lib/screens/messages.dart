import 'package:flutter/material.dart';

import './../widgets/message_card.dart';
import './../models/chat.dart';

class Messages extends StatelessWidget {
  // final List<Chat> chatList;
  // Messages(this.chatList);

  final List<Chat> chatList = [
    Chat(
      id: 'id1',
      name: 'Oswald Collepot',
      message: 'Im the king of gotham',
      time: '5:35PM',
      imageUrl: 'assets/images/user1.png',
    ),
    Chat(
      id: 'id2',
      name: 'Fish Mooney',
      message: 'Please dont call me babes.',
      time: '4:21PM',
      imageUrl: 'assets/images/user2.png',
    ),
    Chat(
      id: 'id3',
      name: 'Hymes Reloke',
      message: 'The ugly way is good.',
      time: 'Yesterday',
      imageUrl: 'assets/images/user3.png',
    ),
    Chat(
      id: 'id4',
      name: 'Barbara Kean',
      message: 'We have all got flair!',
      time: 'Yesterday',
      imageUrl: 'assets/images/user4.png',
    ),
    Chat(
      id: 'id5',
      name: 'Edward naymgma',
      message: 'No body, No crime',
      time: 'Friday',
      imageUrl: 'assets/images/user5.png',
    ),
    Chat(
      id: 'id6',
      name: 'Selina Kyle',
      message: 'Cat got yout tongue',
      time: 'Saturday',
      imageUrl: 'assets/images/user6.png',
    ),
    Chat(
      id: 'id7',
      name: 'Hervey Roamsde',
      message: 'I am the bad guy here?',
      time: 'Sunday',
      imageUrl: 'assets/images/user7.png',
    ),
    Chat(
      id: 'id8',
      name: 'Hymes Reloke',
      message: 'Right way is wrong.',
      time: 'Yesterday',
      imageUrl: 'assets/images/user3.png',
    ),
    Chat(
      id: 'id9',
      name: 'Barbara Kean',
      message: 'We have all got flair!',
      time: 'Yesterday',
      imageUrl: 'assets/images/user4.png',
    ),
    Chat(
      id: 'id10',
      name: 'Edward naymgma',
      message: 'No body, No crime',
      time: 'Friday',
      imageUrl: 'assets/images/user5.png',
    ),
    Chat(
      id: 'id11',
      name: 'Selina Kyle',
      message: 'Cat got yout tongue',
      time: 'Saturday',
      imageUrl: 'assets/images/user6.png',
    ),
    Chat(
      id: 'id12',
      name: 'Hervey Roamsde',
      message: 'I am the bad guy here?',
      time: 'Sunday',
      imageUrl: 'assets/images/user7.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Messages',
          style: new TextStyle(
            color: Theme.of(context).primaryColor,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
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
              children: chatList
                  .map((chat) => MessageCard(
                        chat: chat,
                      ))
                  .toList(),
            )),
          ],
        ),
      ),
    );
  }
}
