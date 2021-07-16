import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Hero extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              colorFilter:
                  new ColorFilter.mode(Colors.black38, BlendMode.darken),
              image: AssetImage('assests/images/homeimage.png'),
              fit: BoxFit.cover)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            './assests/images/hero.png',
            height: 418,
            width: 340,
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            'MOTORVEHICLES. OUR PRIORITY.',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.normal,
                fontFamily: "copperplate gothic"),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '"Building world class service station for cars  and bikes"',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 60,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 80,
          )
        ],
      ),
    );
  }
}
