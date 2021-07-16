import 'package:flutter/material.dart';

class Features extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      if (constraint.maxWidth > 1000) {
        return desktopView();
      } else {
        return mobileView();
      }
    });
  }
}

Widget desktopView() {
  return Container(
      // width: double.infinity,
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 25),
            child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(style: TextStyle(fontSize: 60), children: [
                  TextSpan(
                      text: 'Some of Our Features',
                      style: TextStyle(color: Colors.green)),
                  TextSpan(
                      text: ' which makes us \nstand out from the rest',
                      style: TextStyle(color: Colors.black))
                ])),
          ),
          Container(
            decoration: BoxDecoration(
                // gradient: LinearGradient(colors: [Colors.green, Colors.lime]),
                image: DecorationImage(
                    scale: 2.0,
                    image: AssetImage('./assests/images/features.png'),
                    fit: BoxFit.scaleDown,
                    alignment: Alignment.center)),
            child: Container(
              margin: EdgeInsets.all(100),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 0),
                child: Column(
                  children: [
                    IntrinsicHeight(
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            featureItem(
                                './assests/images/feature_item1.png',
                                'High Performance',
                                'At MOP, a good combination of experienced hands, Standardized processes, usage of genuine parts and advanced diagnostic equipments will keep your car zooming at peak performance.30 days post service guarantee is assured when you service your car with us.    '),
                            SizedBox(
                              width: 20,
                            ),
                            featureItem(
                                './assests/images/feature_item2.png',
                                'Fast Service',
                                'We value our customers time and whether its a minimal service as car wash or a whole car modification, its our obligation to keep our word so you can be rest assured that the service will be done in the time slot allotted for your car service'),
                            SizedBox(
                              width: 20,
                            ),
                            featureItem(
                                './assests/images/feature_item3.png',
                                'Affordable Range',
                                'With great service comes reasonable prices.Rate of prices will fluctuate according to the service or the car or the type of parts you might require, but at MOP, you can avail cashbacks and discounts on offers as well as buy accessories with MOP money and unlock free servicesSo its a win-win!'),
                          ]),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    IntrinsicHeight(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          featureItem(
                              './assests/images/feature_item4.png',
                              '24/7 Support',
                              'Along with our impeccable services we also provide you with 24/7 roadside assistance as well as a dedicated Service Buddy just for your needs!We are always available to clarify your enquires and specific support for your vehicle service.Everything you want to know at your fingertips!'),
                          SizedBox(
                            width: 20,
                          ),
                          featureItem(
                              './assests/images/feature_item5.png',
                              'Seasoned Mechanics',
                              'We make sure that only qualified and experienced mechanics will handle your servicing as our main objective is to keep you driving safely on road and to prevent any future problems with your vehicle. Our technicians adhere to the highest standard in Excellent automotive service'),
                          SizedBox(
                            width: 20,
                          ),
                          featureItem(
                              './assests/images/feature_item6.png',
                              'Professional Work',
                              'Modern cars are much more technically advanced which require professional and experienced mechanics, therefore, MOP service centers are fitted with high class equipment and technology under a team of professional individuals who are trained to cater to your car needs specifically with a golden touch'),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ));
}

Widget mobileView() {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 25),
            child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(style: TextStyle(fontSize: 40), children: [
                  TextSpan(
                      text: 'Some of Our Features',
                      style: TextStyle(color: Colors.green)),
                  TextSpan(
                      text: ' which makes us \nstand out from the rest',
                      style: TextStyle(color: Colors.black))
                ])),
          ),
          Row(
            children: [
              featureItem(
                  './assests/images/feature_item1.png',
                  'High Performance',
                  'At MOP, a good combination of experienced hands, Standardized processes, usage of genuine parts and advanced diagnostic equipments will keep your car zooming at peak performance.30 days post service guarantee is assured when you service your car with us.    '),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              featureItem('./assests/images/feature_item2.png', 'Fast Service',
                  'We value our customers time and whether its a minimal service as car wash or a whole car modification, its our obligation to keep our word so you can be rest assured that the service will be done in the time slot allotted for your car service'),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              featureItem(
                  './assests/images/feature_item3.png',
                  'Affordable Range',
                  'With great service comes reasonable prices.Rate of prices will fluctuate according to the service or the car or the type of parts you might require, but at MOP, you can avail cashbacks and discounts on offers as well as buy accessories with MOP money and unlock free servicesSo its a win-win!'),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              featureItem('./assests/images/feature_item4.png', '24/7 Support',
                  'Along with our impeccable services we also provide you with 24/7 roadside assistance as well as a dedicated Service Buddy just for your needs!We are always available to clarify your enquires and specific support for your vehicle service.Everything you want to know at your fingertips!'),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              featureItem(
                  './assests/images/feature_item5.png',
                  'Seasoned Mechanics',
                  'We make sure that only qualified and experienced mechanics will handle your servicing as our main objective is to keep you driving safely on road and to prevent any future problems with your vehicle. Our technicians adhere to the highest standard in Excellent automotive service'),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              featureItem(
                  './assests/images/feature_item6.png',
                  'Professional Work',
                  'Modern cars are much more technically advanced which require professional and experienced mechanics, therefore, MOP service centers are fitted with high class equipment and technology under a team of professional individuals who are trained to cater to your car needs specifically with a golden touch'),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget featureItem(var imageName, var title, var subTitle) {
  return Expanded(
    child: Container(
      decoration: BoxDecoration(
          color: Color(0xFF002F3A),
          border: Border.all(color: Colors.white, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Center(
                    child: Image.asset(
                      imageName,
                      width: 30,
                      height: 30,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              subTitle,
              style: TextStyle(color: Colors.white, fontSize: 18),
            )
          ],
        ),
      ),
    ),
  );
}
