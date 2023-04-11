import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tutor_me/screens/particularcourse.dart';

class Courses extends StatelessWidget {
  const Courses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          systemNavigationBarColor: Colors.white,
          statusBarColor: Colors.white, // <-- SEE HERE
          statusBarIconBrightness:
              Brightness.dark, //<-- For Android SEE HERE (dark icons)
          //<-- For iOS SEE HERE (dark icons)
        ),
        elevation: 0,
        toolbarHeight: 55,
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(left: 80),
          child: Text(
            'Courses',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            size: 30,
          ),
          color: Colors.black,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.black,
                size: 30,
              ))
        ],
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            Divider(),
            Container(
              height: 40,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ParticularCourse()));
                },
                child: ListTile(
                  tileColor: Colors.white,
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 12, left: 10),
                    child: Text(
                      "Economics",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ),
            ),
            Divider(),
            Container(
              height: 40,
              child: ListTile(
                tileColor: Colors.white,
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 12, left: 10),
                  child: Text(
                    "Geography",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
            Divider(),
            Container(
              height: 40,
              child: ListTile(
                tileColor: Colors.white,
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 12, left: 10),
                  child: Text(
                    "Maths with Stastitics",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
            Divider(),
            Container(
              height: 40,
              child: ListTile(
                tileColor: Colors.white,
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 12, left: 10),
                  child: Text(
                    "History",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
            Divider(),
            Container(
              height: 40,
              child: ListTile(
                tileColor: Colors.white,
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 12, left: 10),
                  child: Text(
                    "ICT",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
            Divider(),
            Container(
              height: 40,
              child: ListTile(
                tileColor: Colors.white,
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 12, left: 10),
                  child: Text(
                    "Commerce",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
            Divider(),
            Container(
              height: 40,
              child: ListTile(
                tileColor: Colors.white,
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 12, left: 10),
                  child: Text(
                    "Accounting",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
            Divider(),
            Container(
              height: 40,
              child: ListTile(
                tileColor: Colors.white,
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 12, left: 10),
                  child: Text(
                    "Litterature",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
            Divider(),
            Container(
              height: 40,
              child: ListTile(
                tileColor: Colors.white,
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 12, left: 10),
                  child: Text(
                    "Literature",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
            Divider(),
            Container(
              height: 40,
              child: ListTile(
                tileColor: Colors.white,
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 12, left: 10),
                  child: Text(
                    "English",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
            Divider(),
            Container(
              height: 40,
              child: ListTile(
                tileColor: Colors.white,
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 12, left: 10),
                  child: Text(
                    "French",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
            Divider(),
            Container(
              height: 40,
              child: ListTile(
                tileColor: Colors.white,
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 12, left: 10),
                  child: Text(
                    "Sociology",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
            Divider(),
            Container(
              height: 40,
              child: ListTile(
                tileColor: Colors.white,
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 12, left: 10),
                  child: Text(
                    "Philosophy",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
            Divider(),
            Container(
              height: 40,
              child: ListTile(
                tileColor: Colors.white,
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 12, left: 10),
                  child: Text(
                    "Food and nutrition",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
