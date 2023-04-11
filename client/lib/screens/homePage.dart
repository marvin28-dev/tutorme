import 'dart:ui';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tutor_me/provider/user_provider.dart';
import 'package:tutor_me/screens/courses.dart';

class HomePage extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;
    return MaterialApp(
      theme: ThemeData(
          dividerColor: Colors.black
              .withOpacity(0.5) // change it with the background color
          ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey.shade100,
        // No appbar provided to the Scaffold, only a body with a
        // CustomScrollView.
        body: CustomScrollView(
          slivers: [
            // Add the app bar to the CustomScrollView.
            SliverAppBar(
              systemOverlayStyle: SystemUiOverlayStyle(
                systemNavigationBarColor: Colors.white,
                statusBarColor: Colors.white, // <-- SEE HERE
                statusBarIconBrightness:
                    Brightness.dark, //<-- For Android SEE HERE (dark icons)
                //<-- For iOS SEE HERE (dark icons)
              ),

              actions: <Widget>[
                Builder(builder: (context) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 7),
                    child: IconButton(
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                        icon: Icon(
                          Icons.menu,
                          color: Colors.black,
                          size: 35,
                        )),
                  );
                }),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Container(
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blueGrey.withOpacity(0.2),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, top: 8),
                      child: Text(
                        'search anything',
                        style: TextStyle(fontSize: 20, color: Colors.black38),
                      ),
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.account_circle_sharp,
                      color: Colors.blueGrey,
                      size: 37,
                    ))
              ],
              // Provide a standard title.

              // Allows the user to reveal the app bar if they begin scrolling
              // back up the list of items.
              floating: true,
              // Display a placeholder widget to visualize the shrinking size.
              //flexibleSpace: Placeholder(),
              // Make the initial height of the SliverAppBar larger than normal.
              expandedHeight: 50,
              backgroundColor: Colors.white,
            ),
            // Next, create a SliverList
            Container(
              child: SliverList(
                // Use a delegate to build items as they're scrolled on screen.
                delegate: SliverChildBuilderDelegate(
                  // The builder function returns a ListTile with a title that
                  // displays the index of the current item.
                  (context, index) => Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Container(
                      height: 540,
                      width: 10,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.account_circle,
                                color: Colors.blueGrey,
                                size: 60,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 90, top: 7),
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(right: 52.0),
                                      child: Text(
                                        user.username.toUpperCase(),
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 145),
                                    child: Text(
                                      'Computer',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 1,
                                  ),
                                  Text(
                                    'Please who can help me solve this',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 50, bottom: 40),
                                child: Text(
                                  '1 hour ago',
                                  style: TextStyle(fontSize: 13),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 60),
                            child: Container(
                                width: 340,
                                height: 370.0,
                                decoration: new BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: new DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(
                                          'assets/images/Capture.PNG'),
                                    ))),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 300),
                            child: Text('2 Comments'),
                          ),
                          Divider(
                            color: Colors.black,
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 70, bottom: 2),
                                    child: Icon(
                                      Icons.add,
                                      size: 30,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 70),
                                    child: Text(
                                      'Follow thread',
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 130, bottom: 2),
                                    child: Icon(Icons.comment_outlined,
                                        size: 30, color: Colors.black),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 130),
                                    child: Text(
                                      'Comment',
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  childCount: 10,
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
          },
          backgroundColor: Colors.blueGrey,
          child: const Icon(Icons.edit),
        ),
        drawer: Container(
          width: MediaQuery.of(context).size.width * 0.7,
          child: Drawer(
            // Add a ListView to the drawer. This ensures the user can scroll
            // through the options in the drawer if there isn't enough vertical
            // space to fit everything.
            child: ListView(
              // Important: Remove any padding from the ListView.
              //padding: EdgeInsets.zero,
              children: [
                Container(
                  height: 130,
                  color: Colors.white,
                  child: DrawerHeader(
                      child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 55),
                        child: Icon(
                          Icons.account_circle_rounded,
                          color: Colors.blueGrey,
                          size: 85,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, top: 20),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 30.0),
                              child: Text(
                                user.username.toUpperCase(),
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 55),
                              child: Text(
                                'Level ' + user.level,
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w300),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
                ),
                Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.home_outlined,
                                    size: 45,
                                    color: Colors.black45,
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0, top: 5),
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.pushAndRemoveUntil(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HomePage()),
                                        (route) => false);
                                  },
                                  child: Text(
                                    'Home',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black87,
                                        fontSize: 18),
                                  )),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.auto_stories_outlined,
                                  size: 43,
                                  color: Colors.black45,
                                )),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0, top: 5),
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Courses()));
                                  },
                                  child: Text(
                                    'Study',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black87,
                                        fontSize: 18),
                                  )),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.notifications,
                                    size: 45, color: Colors.black45)),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0, top: 5),
                              child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Notifications',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black87,
                                        fontSize: 18),
                                  )),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.account_box,
                                    size: 45, color: Colors.black45)),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0, top: 7),
                              child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Profile',
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w300),
                                  )),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.star_border_purple500_rounded,
                                    size: 47, color: Colors.black45)),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, top: 10),
                              child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Premium',
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w300),
                                  )),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.sms_failed_rounded,
                                    size: 42, color: Colors.black45)),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, top: 10),
                              child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'About Us',
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w300),
                                  )),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.contact_phone_rounded,
                                  color: Colors.black45,
                                  size: 42,
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, top: 10),
                              child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Contact Us',
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w300),
                                  )),
                            )
                          ],
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.logout_sharp,
                                  size: 43,
                                  color: Colors.black45,
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, top: 10),
                              child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Contact Us',
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w300),
                                  )),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 90,
                      )
                    ],
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
