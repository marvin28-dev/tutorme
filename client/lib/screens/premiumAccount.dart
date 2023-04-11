import 'package:flutter/material.dart';
import 'package:tutor_me/screens/homePage.dart';
import 'package:tutor_me/screens/paymentCode.dart';

class PremiumAccount extends StatelessWidget {
  const PremiumAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50, top: 100),
            child: Row(
              children: [
                Image.asset('assets/images/Star1.png'),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 15),
                  child: Text(
                    'PREMIUM ACCOUNT!',
                    style: TextStyle(
                      fontFamily: 'Italiana-Regular',
                      fontSize: 24,
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 25),
            child: Text(
              'Set up your premium Account now',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 35, left: 15),
            child: Text(
              'With premium account you have access to:',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 80, top: 20),
            child: Row(
              children: [
                Image.asset('assets/images/Polygon3.png'),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    'Trained Online Tutors',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 80, top: 20),
            child: Row(
              children: [
                Image.asset('assets/images/Polygon3.png'),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    'Online Tutorial Videos',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 80, top: 20),
            child: Row(
              children: [
                Image.asset('assets/images/Polygon3.png'),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    'All Past Questions And Answers',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 80, top: 20),
            child: Row(
              children: [
                Image.asset('assets/images/Polygon3.png'),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    'Add Blockers',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 80, top: 20),
            child: Row(
              children: [
                Image.asset('assets/images/Polygon3.png'),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    'Rapid Customer Support',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 51,
            width: 265,
            decoration: BoxDecoration(boxShadow: []),
            child: TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PaymentCode()));
              },
              child: Text(
                'Try 1 month free',
                style: TextStyle(color: Colors.white, fontSize: 28),
              ),
              style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all(Colors.blueAccent.shade200),
                  backgroundColor:
                      MaterialStateProperty.all(Colors.blueAccent.shade200),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(color: Colors.blueAccent.shade200)),
                  )),
            ),
          ),
          SizedBox(height: 10),
          TextButton(
              onPressed: () {},
              child: Text(
                'Learn More',
                style:
                    TextStyle(fontSize: 16, color: Colors.blueAccent.shade200),
              )),
          SizedBox(height: 40),
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Text(
                'SKIP',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.blueAccent.shade200,
                    fontWeight: FontWeight.bold),
              )),
        ],
      ),
    );
  }
}
