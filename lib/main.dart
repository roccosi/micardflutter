import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.1, 0.9],
            colors: [
              Colors.deepPurple[900],
              Colors.blue[300],
            ],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 40.0),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 5.0,
                        style: BorderStyle.solid,
                        color: Colors.teal.shade50,
                      ),
                    ),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/mine.jpg'),
                      radius: 90.0,
                      backgroundColor: Colors.red,
                    ),
                  ),
                ),
                Text(
                  'Goran Mijalcic',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35.0,
                    fontFamily: 'Abel',
                    fontWeight: FontWeight.w900,
                    letterSpacing: 1.0,
                  ),
                ),
                Text(
                  'MOBILE APP DESIGNER/DEVELOPER',
                  style: TextStyle(
                    color: Colors.indigo[900],
                    fontSize: 17.0,
                    fontFamily: 'Source Sans Pro',
                    fontWeight: FontWeight.w900,
                    letterSpacing: 1.5,
                  ),
                ),
                SizedBox(
                  width: 200.0,
                  height: 30.0,
                  child: Divider(
                    color: Colors.white,
                    height: 5.0,
                  ),
                ),
                Card(
                  elevation: 5.0,
                  margin: EdgeInsets.fromLTRB(41.0, 25.0, 41.0, 0.0),
                  child: FlatButton(
                    onPressed: _launchURL,
                    child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.indigo[900],
                      ),
                      title: Text(
                        '+381 63 741 61 41',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.indigo[900],
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 5.0,
                  margin: EdgeInsets.fromLTRB(41.0, 25.0, 41.0, 0.0),
                  child: FlatButton(
                    onPressed: _launchEmail,
                    child: ListTile(
                      leading: Icon(Icons.email, color: Colors.indigo[900]),
                      title: Text(
                        'goran.m@gmail.com',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontFamily: 'Source Sans Pro',
                          fontWeight: FontWeight.w600,
                          color: Colors.indigo[900],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

_launchURL() async {
  const url = 'tel://+381637416141';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchEmail() async {
  const url = 'mailto:mibcreative@gmail.com';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
