import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class Services extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      if (constraint.maxWidth > 1000) {
        return desktopView(3);
      } else {
        return desktopView(2);
      }
    });
  }
}

Widget serviceImage(RichText text, String imgName) {
  return Container(
    margin: EdgeInsets.all(30),
    height: 300,
    width: 400,
    decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 1.5),
        image: DecorationImage(
            colorFilter: new ColorFilter.mode(Colors.black54, BlendMode.darken),
            image: AssetImage(imgName),
            fit: BoxFit.cover)),
    child: Center(child: text),
  );
}

Widget desktopView(var count) {
  return Container(
      // width: double.infinity,
      decoration: BoxDecoration(color: Colors.black),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 30, 0, 50),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 25),
              child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(style: TextStyle(fontSize: 60), children: [
                    TextSpan(
                        text: 'TOP Services',
                        style: TextStyle(color: Colors.green)),
                    TextSpan(
                        text: ' that are open for customers',
                        style: TextStyle(color: Colors.white))
                  ])),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 0),
              child: GridView.count(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                childAspectRatio: 2,
                crossAxisCount: count,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                children: [
                  serviceImage(
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(children: [
                          TextSpan(
                              text: 'Car',
                              style:
                                  TextStyle(color: Colors.green, fontSize: 35)),
                          TextSpan(
                              text: ' Detailing',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 35))
                        ]),
                      ),
                      'assests/images/Service1.png'),
                  serviceImage(
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(children: [
                          TextSpan(
                              text: 'Full',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 35)),
                          TextSpan(
                              text: ' Wash',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 35))
                        ]),
                      ),
                      'assests/images/Service2.png'),
                  serviceImage(
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(children: [
                          TextSpan(
                              text: 'Custom',
                              style:
                                  TextStyle(color: Colors.green, fontSize: 35)),
                          TextSpan(
                              text: ' Work',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 35))
                        ]),
                      ),
                      'assests/images/Service3.png'),
                  serviceImage(
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(children: [
                          TextSpan(
                              text: 'Tire',
                              style:
                                  TextStyle(color: Colors.green, fontSize: 35)),
                          TextSpan(
                              text: ' Replacement',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 35))
                        ]),
                      ),
                      'assests/images/Service4.png'),
                  serviceImage(
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(children: [
                          TextSpan(
                              text: 'BreakDown',
                              style:
                                  TextStyle(color: Colors.green, fontSize: 35)),
                          TextSpan(
                              text: ' Assist',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 35))
                        ]),
                      ),
                      'assests/images/Service5.png'),
                  serviceImage(
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(children: [
                          TextSpan(
                              text: 'A/C',
                              style:
                                  TextStyle(color: Colors.green, fontSize: 35)),
                          TextSpan(
                              text: ' Services',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 35))
                        ]),
                      ),
                      'assests/images/Service6.png'),
                  serviceImage(
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(children: [
                          TextSpan(
                              text: 'Vehicle',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 35)),
                          TextSpan(
                              text: ' Inspection',
                              style:
                                  TextStyle(color: Colors.green, fontSize: 35))
                        ]),
                      ),
                      'assests/images/Service7.png'),
                  serviceImage(
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(children: [
                          TextSpan(
                              text: 'Painting ',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 35)),
                          TextSpan(
                              text: '& Denting',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 35))
                        ]),
                      ),
                      'assests/images/Service8.png'),
                  serviceImage(
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(children: [
                          TextSpan(
                              text: 'WindShield',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 35)),
                          TextSpan(
                              text: ' Change',
                              style:
                                  TextStyle(color: Colors.green, fontSize: 35))
                        ]),
                      ),
                      'assests/images/Service9.png'),
                ],
              ),
            ),
          ],
        ),
      ));
}

Widget mobileView() {
  return Container();
}
