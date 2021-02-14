import 'package:chatapp/screens/profile.dart';
import 'package:flutter/material.dart';
import './../models/profileCardDetails.dart';

class ProfileCard extends StatefulWidget {
  const ProfileCard({@required this.profile});
  final ProfileCardDetails profile;

  void toggleSwitch(bool value) {}

  @override
  _ProfileCardState createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: const Color(0xffe8e8e8),
          ),
        ),
      ),
      child: ListTile(
        title: Text(
          widget.profile.name,
          style: new TextStyle(
            color: widget.profile.id == 'id7'
                ? const Color(0xffdf193e)
                : Theme.of(context).primaryColor,
            fontSize: 16,
          ),
        ),
        trailing: widget.profile.id != 'id3'
            ? Wrap(
                spacing: 10,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: <Widget>[
                  Text(
                    widget.profile.value,
                    style: new TextStyle(
                      color: Theme.of(context).primaryColorLight,
                      fontSize: 16,
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_right,
                    color: Theme.of(context).primaryColorLight,
                  ),
                ],
              )
            : Switch(
                value: false,
                onChanged: widget.toggleSwitch,
              ),
      ),
    );
  }
}
