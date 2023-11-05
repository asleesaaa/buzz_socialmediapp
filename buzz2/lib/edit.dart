import 'package:flutter/material.dart';

class editprofile extends StatefulWidget {
  @override
  _editprofileDemoState createState() => _editprofileDemoState();
}

class _editprofileDemoState extends State<editprofile> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController bioController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  String selectedGender = 'Male';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Edit Profile',
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
                'Edit Profile',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
              ),
            ),
            body: ListView(children: <Widget>[
              Container(
                //   height: 120,
                //   decoration: const BoxDecoration(
                //     gradient: LinearGradient(
                //       colors: [
                //         Color.fromARGB(255, 236, 201, 43),
                //         Color.fromARGB(159, 236, 201, 43),
                //       ],
                //       end: Alignment.topCenter,
                //       begin: Alignment.bottomCenter,
                //       stops: [0.5, 0.9],
                //     ),
                //   ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // const Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //   children: <Widget>[
                    //     CircleAvatar(
                    //       backgroundColor: Color.fromARGB(255, 0, 0, 0),
                    //       minRadius: 32.0,
                    //       child: CircleAvatar(
                    //         radius: 30.0,
                    //         backgroundImage: NetworkImage(
                    //             'https://avatars0.githubusercontent.com/u/28812093?s=460&u=06471c90e03cfd8ce2855d217d157c93060da490&v=4'),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Name'),
                              TextField(
                                controller: nameController,
                                decoration: const InputDecoration(
                                  hintText: 'Enter your name',
                                ),
                              ),
                              const SizedBox(height: 16.0),
                              const Text('Username'),
                              TextField(
                                controller: bioController,
                                decoration: const InputDecoration(
                                  hintText: 'Enter your username',
                                ),
                              ),
                              const SizedBox(height: 16.0),
                              const Text('Bio'),
                              TextField(
                                controller: usernameController,
                                decoration: const InputDecoration(
                                  hintText: 'Enter your bio',
                                ),
                              ),
                              const SizedBox(height: 16.0),
                              const Text('Gender'),
                              DropdownButton<String>(
                                value: selectedGender,
                                onChanged: (String? newValue) {
                                  if (newValue != null) {
                                    setState(() {
                                      selectedGender = newValue;
                                    });
                                  }
                                },
                                items: <String>[
                                  'Female',
                                  'Male',
                                  'Other',
                                  'Prefer not to say'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                              SizedBox(height: 20.0),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color.fromARGB(
                                        255, 226, 197, 10)),
                                onPressed: () {
                                  // Handle form submission here
                                  String name = nameController.text;
                                  String bio = bioController.text;
                                  String username = usernameController.text;

                                  print('Name: $name');
                                  print('Bio: $bio');
                                  print('Username: $username');
                                  print('Gender: $selectedGender');
                                },
                                child: const Text(
                                  'Submit',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            ]))
                  ],
                ),
              ),
            ])),
        debugShowCheckedModeBanner: false);
  }
}
