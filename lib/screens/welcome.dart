import 'package:flutter/material.dart';

import './messages.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.1, 0.9],
          colors: [const Color(0xffdf193e), const Color(0xffeb402c)],
        ),
      ),
      child: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Text(
                'HeyU',
                style: new TextStyle(
                  fontSize: 70,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Lets connect with your besties!!!',
                style: new TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              TextFormField(
                autocorrect: true,
                textCapitalization: TextCapitalization.words,
                enableSuggestions: false,
                style: TextStyle(color: Colors.white),
                initialValue: 'supertramp@supertramp.com',
                textAlign: TextAlign.center,
                decoration: new InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0),
                      borderSide: BorderSide.none),
                  contentPadding: new EdgeInsets.symmetric(
                      vertical: 15.0, horizontal: 10.0),
                  fillColor: const Color(0xff9e1a27),
                  filled: true,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                style: TextStyle(color: Colors.white),
                initialValue: '123456789',
                textAlign: TextAlign.center,
                decoration: new InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0),
                      borderSide: BorderSide.none),
                  contentPadding: new EdgeInsets.symmetric(
                      vertical: 15.0, horizontal: 10.0),
                  fillColor: const Color(0xff9e1a27),
                  filled: true,
                ),
                obscureText: true,
              ),
              SizedBox(
                height: 50,
              ),
              SizedBox(
                width: double.infinity,
                child: FlatButton(
                  height: 50,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  color: Colors.white,
                  child: Text(
                    'SignUp',
                    style: new TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xffdf193e),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed(Messages.routeName);
                  },
                ),
              ),
              FlatButton(
                child: Text(
                  'Already have an account? Sign in',
                  style: new TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
