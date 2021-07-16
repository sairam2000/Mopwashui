import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth >= 800) {
        return DesktopNavbar();
      } else {
        return MobileNavbar();
      }
    });
  }
}

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.black),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              './assests/images/logo.png',
              height: 125,
              width: 100,
              fit: BoxFit.fill,
            ),
            Text(
              'HOME',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Text(
              'WORKING',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Text(
              'SERVICES',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Text(
              'FEATURES',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Text(
              'MOP LUXURY',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Text(
              'FAQ',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Text(
              'REVIEW',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Text(
              'CONTACT US',
              style: TextStyle(color: Colors.white, fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      decoration: BoxDecoration(color: Colors.black),
      child: Column(
        children: [
          Center(
            child: Image.asset(
              './assests/images/logo.png',
              height: 60,
            ),
          )
        ],
      ),
    );
  }
}
