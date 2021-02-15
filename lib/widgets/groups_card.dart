import 'package:flutter/material.dart';

import './../models/group.dart';
import './../screens/conversation.dart';

class GroupsCard extends StatelessWidget {
  const GroupsCard({@required this.group});
  final Group group;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(Conversation.routeName);
              },
              child: Card(
                elevation: 5,
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 10),
                    Container(
                      alignment: Alignment.topRight,
                      child: Icon(Icons.more_vert),
                    ),
                    Text(
                      this.group.name,
                      style: new TextStyle(
                          fontSize: 20, color: Theme.of(context).primaryColor),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '${this.group.name} . ${this.group.totalMember}',
                      style: new TextStyle(
                          fontSize: 12,
                          color: Theme.of(context).primaryColorLight),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: Row(
                            children: this
                                .group
                                .imageUrls
                                .map((image) => Container(
                                      margin: EdgeInsets.only(right: 5),
                                      child: CircleAvatar(
                                        radius: 15,
                                        backgroundImage: AssetImage(image),
                                      ),
                                    ))
                                .toList(),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
