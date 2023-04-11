import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ParticularCourse extends StatelessWidget {
  const ParticularCourse({Key? key}) : super(key: key);

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
            'Economics',
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
              padding: EdgeInsets.only(),
              height: 50,
              child: ListTile(
                tileColor: Colors.white,
                title: Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 7),
                  child: Text(
                    "Topic 1:",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(left: 12, bottom: 15),
                  child: Text('Introduction to Economics'),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(),
              height: 50,
              child: ListTile(
                tileColor: Colors.white,
                title: Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 7),
                  child: Text(
                    "Topic 2:",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(left: 12, bottom: 15),
                  child: Text('Micro Economics'),
                ),
              ),
            ),
            Divider(),
            Container(
              padding: EdgeInsets.only(),
              height: 50,
              child: ListTile(
                tileColor: Colors.white,
                title: Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 7),
                  child: Text(
                    "Topic 3:",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(left: 12, bottom: 15),
                  child: Text('Macro Economics'),
                ),
              ),
            ),
            Divider(),
            Container(
              padding: EdgeInsets.only(),
              height: 50,
              child: ListTile(
                tileColor: Colors.white,
                title: Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 7),
                  child: Text(
                    "Topic 4:",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(left: 12, bottom: 15),
                  child: Text('Demand and Supply'),
                ),
              ),
            ),
            Divider(),
            Container(
              padding: EdgeInsets.only(),
              height: 50,
              child: ListTile(
                tileColor: Colors.white,
                title: Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 7),
                  child: Text(
                    "Topic 5:",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(left: 12, bottom: 15),
                  child: Text('Management of finance'),
                ),
              ),
            ),
            Divider(),
            Container(
              padding: EdgeInsets.only(),
              height: 50,
              child: ListTile(
                tileColor: Colors.white,
                title: Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 7),
                  child: Text(
                    "Topic 6:",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(left: 12, bottom: 15),
                  child: Text('Labour Economics'),
                ),
              ),
            ),
            Divider(),
            Container(
              padding: EdgeInsets.only(),
              height: 50,
              child: ListTile(
                tileColor: Colors.white,
                title: Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 7),
                  child: Text(
                    "Topic 7:",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(left: 12, bottom: 15),
                  child: Text('Financial Economics'),
                ),
              ),
            ),
            Divider(),
            Container(
              padding: EdgeInsets.only(),
              height: 50,
              child: ListTile(
                tileColor: Colors.white,
                title: Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 7),
                  child: Text(
                    "Topic 8:",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(left: 12, bottom: 15),
                  child: Text('Scarcity and Solutions'),
                ),
              ),
            ),
            Divider(),
            Container(
              padding: EdgeInsets.only(),
              height: 50,
              child: ListTile(
                tileColor: Colors.white,
                title: Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 7),
                  child: Text(
                    "Topic 9:",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(left: 12, bottom: 15),
                  child: Text('Public and Institutional Economics'),
                ),
              ),
            ),
            Divider(),
            Container(
              padding: EdgeInsets.only(),
              height: 50,
              child: ListTile(
                tileColor: Colors.white,
                title: Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 7),
                  child: Text(
                    "Topic 10:",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(left: 12, bottom: 15),
                  child: Text('Fundamental Economics'),
                ),
              ),
            ),
            Divider(),
            Container(
              padding: EdgeInsets.only(),
              height: 50,
              child: ListTile(
                tileColor: Colors.white,
                title: Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 7),
                  child: Text(
                    "Topic 11:",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(left: 12, bottom: 15),
                  child: Text('Health Education and welfare'),
                ),
              ),
            ),
            Divider(),
            Container(
              padding: EdgeInsets.only(),
              height: 50,
              child: ListTile(
                tileColor: Colors.white,
                title: Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 7),
                  child: Text(
                    "Topic 12:",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(left: 12, bottom: 15),
                  child: Text('Corporate Finance'),
                ),
              ),
            ),
            Divider(),
            Container(
              padding: EdgeInsets.only(),
              height: 50,
              child: ListTile(
                tileColor: Colors.white,
                title: Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 7),
                  child: Text(
                    "Topic 13:",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(left: 12, bottom: 15),
                  child: Text('Global Growth'),
                ),
              ),
            ),
            Divider(),
            Container(
              padding: EdgeInsets.only(),
              height: 50,
              child: ListTile(
                tileColor: Colors.white,
                title: Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 7),
                  child: Text(
                    "Topic 14:",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(left: 12, bottom: 15),
                  child: Text('Introduction to Economics'),
                ),
              ),
            ),
            Divider(),
            Container(
              padding: EdgeInsets.only(),
              height: 50,
              child: ListTile(
                tileColor: Colors.white,
                title: Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 7),
                  child: Text(
                    "Topic 15:",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(left: 12, bottom: 15),
                  child: Text('Market value'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
