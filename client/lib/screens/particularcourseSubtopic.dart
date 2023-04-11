import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ParticularCourseSubtopic extends StatelessWidget {
  const ParticularCourseSubtopic({Key? key}) : super(key: key);

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
        title: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Text('Topic 4 ',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 20)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Text(
                'Demand and Supply',
                style: TextStyle(
                    color: Colors.black87, fontWeight: FontWeight.w300),
              ),
            ),
          ],
        ),

        leading: IconButton(
          onPressed: () {},
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
        // ignore: prefer_const_constructors
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
                    "Sub Topic 1:",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(left: 12, bottom: 15),
                  child: Text('Definition of terms'),
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
                    "Sub Topic 2:",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(left: 12, bottom: 15),
                  child: Text('Introduction to demand'),
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
                    "Sub Topic 3:",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(left: 12, bottom: 15),
                  child: Text('Introduction to Supply'),
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
                    "Sub Topic 4:",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(left: 12, bottom: 15),
                  child: Text('Graphs under demand'),
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
                    "Sub Topic 5:",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(left: 12, bottom: 15),
                  child: Text('Graphs under Supply'),
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
                    "Sub Topic 6:",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(left: 12, bottom: 15),
                  child: Text('The Demand Curve'),
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
                    "Sub Topic 7:",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(left: 12, bottom: 15),
                  child: Text('The Supply Curve'),
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
                    "Sub Topic 8:",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(left: 12, bottom: 15),
                  child: Text('Demand Elasticity'),
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
                    "Sub Topic 9:",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(left: 12, bottom: 15),
                  child: Text('Supply Elasticity'),
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
                    "Sub Topic 10:",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(left: 12, bottom: 15),
                  child: Text('Application of Deman Elasticity'),
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
                    "Sub Topic 11:",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(left: 12, bottom: 15),
                  child: Text('Application of Supply Elasticity'),
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
                    "Sub Topic 12:",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(left: 12, bottom: 15),
                  child: Text('Corporate Demand'),
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
                    "Sub Topic 13:",
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
                    "Sub Topic 14:",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(left: 12, bottom: 15),
                  child: Text('Corporate Demand'),
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
                    "Sub STopic 15:",
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
