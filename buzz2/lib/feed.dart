import 'dart:developer';

import 'package:buzz2/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class Feed extends StatefulWidget {
  @override
  _FeedDemoState createState() => _FeedDemoState();
}

class _FeedDemoState extends State<Feed> {
  int c1 = 0;
  int c2 = 0;

  void _incrementCounter() {
    setState(() {
      c1++;
    });
  }

  void _incrementCounterr() {
    setState(() {
      c2++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Container(
              width: 230,
              height: 190,
              /*decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(50.0)),*/

              child: Lottie.asset("assets/bee.json")),
          centerTitle: true,
          title: Text(
            'Buzz',
            style: GoogleFonts.pacifico(
                textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 29,
                    fontWeight: FontWeight.w500)),
          ),
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        body: SingleChildScrollView(
          child: Column(children: <Widget>[
            Divider(),
            Row(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(left: 5)),
                CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 0, 0, 0),
                  minRadius: 20.0,
                  child: CircleAvatar(
                    radius: 18.0,
                    backgroundImage: NetworkImage(
                        'https://avatars0.githubusercontent.com/u/28812093?s=460&u=06471c90e03cfd8ce2855d217d157c93060da490&v=4'),
                  ),
                ),
                Text(
                  '  asleesaaa',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
            Divider(),
            const SizedBox(
              width: 290,
              height: 220,
              child: Image(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      "https://upload.wikimedia.org/wikipedia/commons/6/65/Yellow_nature.jpg")),
            ),
            SizedBox(
              child: Center(
                child: Row(
                  children: <Widget>[
                    IconButton(
                      onPressed: () {
                        log("clicked!!");
                        _incrementCounter();

                        //Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.thumb_up,
                        size: 18,
                        color: Colors.black,
                      ),
                    ),
                    Text("$c1"),
                  ],
                ),
              ),
            ),
            Divider(),
            const Row(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(left: 5)),
                Text(
                  '  asleesaaa',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text('  haha nice',
                    style: TextStyle(
                      fontSize: 16,
                    ))
              ],
            ),
            const Divider(),
            const Row(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(left: 5)),
                CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 0, 0, 0),
                  minRadius: 20.0,
                  child: CircleAvatar(
                    radius: 18.0,
                    backgroundImage: NetworkImage(
                        'https://avatars0.githubusercontent.com/u/28812093?s=460&u=06471c90e03cfd8ce2855d217d157c93060da490&v=4'),
                  ),
                ),
                Text(
                  '  asleesaaa',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
            Divider(),
            const SizedBox(
              width: 290,
              height: 220,
              child: Image(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      "https://upload.wikimedia.org/wikipedia/commons/6/65/Yellow_nature.jpg")),
            ),
            SizedBox(
                child: Center(
                    child: Row(children: <Widget>[
              IconButton(
                onPressed: () {
                  _incrementCounterr();
                  // Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.thumb_up,
                  size: 18,
                  color: Colors.black,
                ),
              ),
              Text("$c2"),
            ]))),
            Divider(),
            const Row(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(left: 5)),
                Text(
                  '  asleesaaa',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text('  haha nice',
                    style: TextStyle(
                      fontSize: 16,
                    ))
              ],
            ),
            Divider(),
          ]),
        ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Color.fromARGB(255, 226, 197, 10),
            selectedItemColor: Color.fromARGB(255, 12, 0, 0),
            unselectedItemColor:
                Color.fromARGB(255, 59, 57, 57).withOpacity(.60),
            selectedFontSize: 0,
            unselectedFontSize: 0,
            onTap: (value) {
              // Respond to item press.
            },
            items: [
              BottomNavigationBarItem(
                label: (''),
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: (''),
                icon: Icon(Icons.search),
              ),
              BottomNavigationBarItem(
                label: (''),
                icon: Icon(Icons.add_box),
              ),
              BottomNavigationBarItem(
                label: (''),
                icon: IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => profile()));
                    },
                    icon: Icon(Icons.person)),
              ),
            ]));
  }
}
