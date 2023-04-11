import 'package:flutter/material.dart';
import 'package:tutor_me/screens/homePage.dart';

class PaymentCode extends StatelessWidget {
  const PaymentCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
            SizedBox(height: 60),
            Container(
              width: 280,
              child: Text(
                'Enter a Payment Code or a Promo Code: ',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 15),
              width: 315,
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: const BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  fillColor: Colors.grey.withOpacity(0.3),
                  filled: true,
                  hintText: 'Enter code',
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.w300, fontStyle: FontStyle.italic),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(left: 8),
              width: 300,
              child: TextButton(
                  onPressed: () {},
                  child: RichText(
                    //'By signing up, you agree to the Terms of \nService and Privacy Policy'
                    text: TextSpan(
                        text: 'Click ',
                        style: TextStyle(color: Colors.black, fontSize: 22),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'here ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueAccent.shade200,
                                  fontSize: 22,
                                  fontStyle: FontStyle.italic)),
                          TextSpan(
                              text: 'to get a payment code',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                              )),
                        ]),
                  )),
            ),
            SizedBox(
              height: 110,
            ),
            Container(
              height: 51,
              width: 265,
              decoration: BoxDecoration(boxShadow: []),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Text(
                  'Continue',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
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
            SizedBox(
              height: 20,
            ),
            Container(
              height: 51,
              width: 265,
              decoration: BoxDecoration(boxShadow: []),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Go Back',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
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
          ],
        ),
      ),
    );
  }
}
