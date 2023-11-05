import 'dart:developer';

import 'package:buzz2/edit.dart';
import 'package:buzz2/signin.dart';
import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  @override
  _profileDemoState createState() => _profileDemoState();
}

class _profileDemoState extends State<profile> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 226, 197, 10),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 18,
              color: Colors.black,
            ),
          ),
          title: const Text(
            'Profile',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => LoginDemo()));
              },
              icon: const Icon(
                Icons.logout,
                size: 18,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: ListView(
          children: <Widget>[
            Container(
              height: 200,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 236, 201, 43),
                    Color.fromARGB(159, 236, 201, 43),
                  ],
                  end: Alignment.topCenter,
                  begin: Alignment.bottomCenter,
                  stops: [0.5, 0.9],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 0, 0, 0),
                        minRadius: 32.0,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundImage: NetworkImage(
                              'https://www.google.com/url?sa=i&url=https%3A%2F%2Fdpemoji.com%2Fgirlish-cartoon-dp%2F&psig=AOvVaw0lk1E8rzx85qML9xC2L-8Q&ust=1698935964539000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCJjv0OeDo4IDFQAAAAAdAAAAABAK'),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Asleesa Khuntia',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 5, 5, 5),
                    ),
                  ),
                  const Text(
                    'Be kind.',
                    style: TextStyle(
                        color: Color.fromARGB(255, 3, 3, 3),
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  IconButton(
                    icon: const Icon(Icons.edit),
                    tooltip: 'Edit Profile',
                    onPressed: () {
                      log("hello");
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => editprofile()));
                    },
                  )
                ],
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      color: const Color.fromARGB(159, 236, 201, 43),
                      child: const ListTile(
                        title: Text(
                          '500',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Color.fromARGB(253, 4, 4, 4),
                          ),
                        ),
                        subtitle: Text(
                          'Followers',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(253, 4, 4, 4),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Color.fromARGB(159, 236, 201, 43),
                      child: const ListTile(
                        title: Text(
                          '50',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Color.fromARGB(253, 4, 4, 4),
                          ),
                        ),
                        subtitle: Text(
                          'Following',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(253, 4, 4, 4),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: const Column(
                children: <Widget>[
                  ListTile(
                    title: Text(
                      'Username',
                      style: TextStyle(
                        color: Color.fromARGB(253, 4, 4, 4),
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Text(
                      'asleesaaa',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    title: Text(
                      'Email',
                      style: TextStyle(
                        color: Color.fromARGB(253, 4, 4, 4),
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Text(
                      'asleesad@gmail.com',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    title: Text(
                      'Gender',
                      style: TextStyle(
                        color: Color.fromARGB(253, 4, 4, 4),
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Text(
                      'Female',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
