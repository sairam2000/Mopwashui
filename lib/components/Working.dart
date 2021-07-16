import 'package:flutter/material.dart';

class Working extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth >= 900) {
        return desktopView();
      } else {
        return mobileView();
      }
    });
  }
}

Widget desktopView() {
  return Container(
    margin: EdgeInsets.all(30),
    decoration: BoxDecoration(color: Colors.white),
    child: Padding(
      padding: const EdgeInsets.all(40.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flex(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            direction: Axis.horizontal,
            children: [
              Expanded(
                flex: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'BRAND NEW SERVICE STATION TO BLOW YOUR MIND ',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      'Welcome to MOP! \nStrap in to uncover the new efficient way of caring for your beloved car or bike. ',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'We have made new ways to care for your car that will change the way you live',
                      style: TextStyle(fontSize: 25),
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    Text(
                      'WHO ARE WE? ',
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Image.asset(
                  './assests/images/working.png',
                  width: 689,
                  height: 436,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'MOP services concept was developed by Nexisersoftech  Pvt.  Ltd.  INDIA to give our Automobile community  a new definition for car and bike service stations professionally.\nJust as our motto in MOP ( Motorvehicles. Our Priority) we strive for nothing less than excellence for your beloved automobiles with no limitations to any models or types or the number of wheels on them.',
            style: TextStyle(fontSize: 30),
          )
        ],
      ),
    ),
  );
}

Widget mobileView() {
  return Container(
    decoration: BoxDecoration(color: Colors.white),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'BRAND NEW SERVICE STATION TO BLOW YOUR MIND ',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Welcome to MOP! \nStrap in to uncover the new efficient way of caring for your beloved car or bike. ',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'We have made new ways to care for your car that will change the way you live',
                style: TextStyle(fontSize: 18),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Image.asset(
            './assests/images/working.png',
            width: 600,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'WHO ARE WE? ',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'MOP services concept was developed by Nexisersoftech  Pvt.  Ltd.  INDIA to give our Automobile community  a new definition for car and bike service stations professionally.\nJust as our motto in MOP ( Motorvehicles. Our Priority) we strive for nothing less than excellence for your beloved automobiles with no limitations to any models or types or the number of wheels on them.',
                style: TextStyle(fontSize: 18),
              )
            ],
          ),
        )
      ],
    ),
  );
}
