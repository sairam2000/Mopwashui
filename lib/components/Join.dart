import 'package:flutter/material.dart';

class Join extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    style: TextStyle(fontSize: 65, fontWeight: FontWeight.w600),
                    children: [
                      TextSpan(text: 'Want to join'),
                      TextSpan(
                          text: ' your', style: TextStyle(color: Colors.green)),
                      TextSpan(text: ' business with'),
                      TextSpan(
                          text: ' our', style: TextStyle(color: Colors.green)),
                      TextSpan(text: ' team?')
                    ]),
              ),
            ),
            ListItem(
                Color(0xFFE4F5F8),
                './assests/images/join_item1.png',
                'More Reach, More Customers',
                'List your service station and get free portal access to list all your services with their respective costs'),
            ListItem(
                Colors.white,
                './assests/images/join_item2.png',
                'Easy Customer Access',
                'Customers can book services through MOP mobile application or website'),
            ListItem(
                Color(0xFFE4F5F8),
                './assests/images/join_item3.png',
                'Increase Online rating',
                'Provide quality service and increase your ratings with customer reviews'),
            ListItem(
                Colors.white,
                './assests/images/join_item4.png',
                'Increased visibility according to service',
                'Higher ratings will lead to increased visibility over MOP mobile application and website'),
            ListItem(
                Color(0xFFE4F5F8),
                './assests/images/join_item5.png',
                'Easy flow of transactions',
                'Pre-Booking services help in aligning the next car or bike service'),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}

Widget ListItem(var color, iconName, title, subTitle) {
  return Container(
    color: color,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
      child: Row(
        children: [
          SizedBox(
            width: 30,
          ),
          Image.asset(
            iconName,
            height: 140,
            width: 140,
          ),
          SizedBox(
            width: 80,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(color: Colors.blue, fontSize: 50),
                ),
                SizedBox(height: 15),
                Text(
                  subTitle,
                  style: TextStyle(fontSize: 33),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
