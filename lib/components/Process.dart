import 'package:flutter/material.dart';

class Process extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [Color(0xFF02A9C4), Color(0xFF3DC787)],
      )),
      child: CustomPaint(
        painter: ShapePainter(),
        child: Container(
            width: double.infinity,
            child: Column(
              children: [
                title(),
                row1(),
                row2(),
                row3(),
                row4(),
              ],
            )),
      ),
    );
  }
}

Widget row4() {
  return Stack(
    children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(320, 0, 0, 0),
        child: Align(
            alignment: Alignment.topLeft,
            child: Image.asset(
              './assests/images/process_4.png',
              height: 486,
              width: 357,
            )),
      ),
      Positioned(
        right: 117,
        top: -20,
        child: Text(
          '04',
          style: TextStyle(
              color: Colors.white38,
              fontWeight: FontWeight.bold,
              fontSize: 321),
        ),
      ),
      Positioned(
        left: 900,
        top: 170,
        child: Text(
          'Refer and Relax',
          style: TextStyle(
              fontSize: 62, fontWeight: FontWeight.w700, color: Colors.white),
        ),
      ),
      Positioned(
        left: 900,
        top: 250,
        child: Container(
          width: 790,
          child: Column(
            children: [
              Text(
                'Book your service on our application and get reward points every time your friend books a service on our application  ',
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Use Reward points to buy Accessories, Spare parts, Insurance etc for your car!',
                style: TextStyle(fontSize: 30),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}

Widget row3() {
  return Stack(
    children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 387, 0),
        child: Align(
            alignment: Alignment.topRight,
            child: Image.asset(
              './assests/images/process_3.png',
              height: 486,
              width: 357,
            )),
      ),
      Positioned(
        left: 594,
        top: -20,
        child: Text(
          '03',
          style: TextStyle(
              color: Color(0x3304A1C6),
              fontWeight: FontWeight.bold,
              fontSize: 321),
        ),
      ),
      Positioned(
        left: 153,
        top: 170,
        child: Text(
          'Track Service in real time',
          style: TextStyle(fontSize: 62, fontWeight: FontWeight.w700),
        ),
      ),
      Positioned(
        left: 153,
        top: 250,
        child: Container(
          width: 790,
          child: Column(
            children: [
              Text(
                'You can now track your vehicle progress and communicate with the specially assigned buddy just for your car ',
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Track your service status live from Pickup until your vehicle gets back to your home',
                style: TextStyle(fontSize: 30),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}

Widget row2() {
  return Stack(
    children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
        child: Align(
            alignment: Alignment.centerLeft,
            child: Image.asset(
              './assests/images/process_2.png',
              height: 559,
              width: 612,
            )),
      ),
      Positioned(
        left: 731,
        top: -20,
        child: Text(
          '02',
          style: TextStyle(
              color: Color(0x3304A1C6),
              fontWeight: FontWeight.bold,
              fontSize: 321),
        ),
      ),
      Positioned(
        right: 90,
        top: 170,
        child: Text(
          'Book A slot and Schedule Pickup',
          style: TextStyle(fontSize: 62, fontWeight: FontWeight.w700),
        ),
      ),
      Positioned(
        left: 800,
        top: 250,
        child: Container(
          width: 790,
          child: Column(
            children: [
              Text(
                'You can filter service centers based on your Budget, Service requirement, Customer rating etc',
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Search from our service centers and book a slot closest to you and at your convenience',
                style: TextStyle(fontSize: 30),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}

Widget row1() {
  return Stack(
    children: [
      Positioned(
        left: 103,
        top: -20,
        child: Text(
          '01',
          style: TextStyle(
              color: Color(0x3304A1C6),
              fontWeight: FontWeight.bold,
              fontSize: 321),
        ),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 130, 0),
        child: Align(
            alignment: Alignment.centerRight,
            child: Image.asset(
              './assests/images/process_1.png',
              height: 580,
              width: 783,
            )),
      ),
      Positioned(
        left: 210,
        top: 170,
        child: Text(
          'Select your Vehicle service',
          style: TextStyle(fontSize: 62, fontWeight: FontWeight.w700),
        ),
      ),
      Positioned(
        left: 210,
        top: 250,
        child: Container(
          width: 790,
          child: Column(
            children: [
              Text(
                'We have partnered with Authorized and Unauthorized service centers to customize our services as per your need',
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Choose your service and search for nearby service centers',
                style: TextStyle(fontSize: 30),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}

Widget title() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 100),
    child: Align(
      alignment: Alignment.topCenter,
      child: Text(
        'How do we function as a team and how does MOP work?',
        style: TextStyle(
            fontSize: 65, fontWeight: FontWeight.bold, letterSpacing: 1.2),
      ),
    ),
  );
}

class ShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = Colors.white;
    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, 7.16 / 8 * size.height);
    path.lineTo(size.width, size.height / 2);
    path.close();
    canvas.drawPath(path, paint);

    final path2 = Path();
    path2.moveTo(0, 7.16 / 8 * size.height);
    path2.lineTo(size.width, 7.16 / 8 * size.height);
    path2.lineTo(size.width, size.height);
    path2.lineTo(0, size.height);
    path2.close();
    canvas.drawPath(path2, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
    // throw UnimplementedError();
  }
}
