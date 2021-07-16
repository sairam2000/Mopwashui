import 'package:flutter/material.dart';

class Luxury extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assests/images/Luxury.png'),
              fit: BoxFit.cover)),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 10),
              child: Text(
                'MOP Luxury',
                style: TextStyle(
                    fontSize: 65,
                    color: Color(0xFFF3C65B),
                    fontWeight: FontWeight.bold,
                    fontFamily: 'copperplate gothic'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 20),
              child: Text(
                'MOP Luxury is a special segment of our service that is curated entirely specific for \nyour premium cars and bikes.',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  './assests/images/Luxury_point.png',
                  height: 30,
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Highest Value Service',
                        style: TextStyle(
                            fontSize: 30,
                            color: Color(0xFFF3C65B),
                            fontWeight: FontWeight.bold,
                            fontFamily: 'copperplate gothic'),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        'Your vehicles will be serviced in State of the art workshops with \nonly seasoned mechanics using superior and genuine products \nas well as the most safest and effective methods',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 80,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  './assests/images/Luxury_point.png',
                  height: 30,
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Priority Servicing',
                        style: TextStyle(
                            fontSize: 30,
                            color: Color(0xFFF3C65B),
                            fontWeight: FontWeight.bold,
                            fontFamily: 'copperplate gothic'),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        child: Text(
                          'Our Premium customers will have priority servicing as well as a \nshorter waiting period so you can have your vehicle cruising \nthrough the road as soon as possible',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w400),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 80,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  './assests/images/Luxury_point.png',
                  height: 30,
                ),
                SizedBox(
                  width: 20,
                ),
                // Image
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '3 Month Guarantee ',
                        style: TextStyle(
                            fontSize: 30,
                            color: Color(0xFFF3C65B),
                            fontWeight: FontWeight.bold,
                            fontFamily: 'copperplate gothic'),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        'You can relax knowing that your vehicle is in good hands and with \na MOP guarantee of 3 months after your luxury vehicle service. \nPretty good premium deal for your vehicle!',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 50,
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
