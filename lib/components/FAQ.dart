import 'package:flutter/material.dart';

class FAQ extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // height: 650,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('./assests/images/FAQ.png'), fit: BoxFit.fill),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                  style: TextStyle(fontSize: 65, fontWeight: FontWeight.w600),
                  children: [
                    TextSpan(
                        text: 'Frequently',
                        style: TextStyle(color: Colors.green)),
                    TextSpan(
                        text: ' asked questions',
                        style: TextStyle(color: Colors.white)),
                  ]),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 150, vertical: 25),
              child: Divider(
                color: Colors.white,
              ),
            ),
            questionComponent('Does MOP provide quality assurance or warranty?',
                'We are commited to providing a best in class premium service experience to our customers. When ever you avail a service from Mopwash you are given a 30 days post service quality assurance & warranty.'),
            questionComponent('Is it trustworthy?',
                'Yes, It is trust worth. We are offering the great service with reasonable prices.'),
            questionComponent('What is the experience MOP delivers?',
                'We experienced in the car servicing field. Thousands customers are happy with our service'),
            questionComponent(
                'What type of payment options are available in MOP?',
                'Mopwash provides multiple payment options. You can pay via mopwash website & app using credit/debit card, Netbanking or digital wallets. You can also pay via cash at the time of delivery of your car.')
          ],
        ),
      ),
    );
  }
}

Widget questionComponent(var question, var answer) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 8),
        child: Row(
          children: [
            Expanded(
              child: ExpansionTile(
                trailing: Text(
                  '+',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white),
                ),
                title: Text(
                  question,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 25,
                      color: Colors.white),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      answer,
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 25),
        child: Divider(
          color: Colors.white,
        ),
      )
    ],
  );
}
