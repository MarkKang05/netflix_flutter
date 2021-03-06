import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';

class MoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 50),
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('images/bbongflixlogo.png'),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  '암유발자',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                width: 140,
                height: 5,
                color: Colors.red,
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  child: Linkify(
                    onOpen: (link) async {
                      if (await canLaunch(link.url)) {
                        await launch(link.url);
                      }
                    },
                    text: "https://github.com/MarkKang05",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    linkStyle: TextStyle(color: Colors.white),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
