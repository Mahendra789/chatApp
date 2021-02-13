import 'package:flutter/material.dart';

class ConversationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 180,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                child: Text(
                  'Nice to meet you Mr oswald',
                  textAlign: TextAlign.end,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xffe0e0e0),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(0),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage('assets/images/user1.png'),
                ),
              ),
              Container(
                width: 180,
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 8),
                margin: EdgeInsets.all(10),
                child: Text(
                  'Call me hero',
                  style: TextStyle(color: Colors.white),
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.1, 0.9],
                    colors: [const Color(0xffdf193e), const Color(0xffeb402c)],
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(12),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 180,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                child: Text(
                  'I thought i heard you hated that name',
                  textAlign: TextAlign.end,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xffe0e0e0),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(0),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage('assets/images/user1.png'),
                ),
              ),
              Container(
                width: 180,
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 8),
                margin: EdgeInsets.all(10),
                child: Text(
                  'My business is my business none of your business',
                  style: TextStyle(color: Colors.white),
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.1, 0.9],
                    colors: [const Color(0xffdf193e), const Color(0xffeb402c)],
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(12),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 180,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                child: Text(
                  'burning train on the floor',
                  textAlign: TextAlign.end,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xffe0e0e0),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(0),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage('assets/images/user1.png'),
                ),
              ),
              Container(
                width: 180,
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 8),
                margin: EdgeInsets.all(10),
                child: Text(
                  'time to goodbye, see you man',
                  style: TextStyle(color: Colors.white),
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.1, 0.9],
                    colors: [const Color(0xffdf193e), const Color(0xffeb402c)],
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(12),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 180,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                child: Text(
                  'Nice to meet you again Mr oswald',
                  textAlign: TextAlign.end,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xffe0e0e0),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(0),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage('assets/images/user1.png'),
                ),
              ),
              Container(
                width: 180,
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 8),
                margin: EdgeInsets.all(10),
                child: Text(
                  'Call me hero again',
                  style: TextStyle(color: Colors.white),
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.1, 0.9],
                    colors: [const Color(0xffdf193e), const Color(0xffeb402c)],
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(12),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 180,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                child: Text(
                  'Thats too boring to say',
                  textAlign: TextAlign.end,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xffe0e0e0),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(0),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage('assets/images/user1.png'),
                ),
              ),
              Container(
                width: 180,
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 8),
                margin: EdgeInsets.all(10),
                child: Text(
                  'Wish you good luck',
                  style: TextStyle(color: Colors.white),
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.1, 0.9],
                    colors: [const Color(0xffdf193e), const Color(0xffeb402c)],
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(12),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
