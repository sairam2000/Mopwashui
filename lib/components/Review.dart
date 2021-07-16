import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class Review extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return commentBuilder();
  }
}

Widget commentBuilder() {
  return Container(
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'See what our Users say',
            style: TextStyle(
                color: Color(0xFF002F3A),
                fontSize: 65,
                fontWeight: FontWeight.bold),
          ),
          ResponsiveGridList(
              rowMainAxisAlignment: MainAxisAlignment.spaceAround,
              minSpacing: 63,
              desiredItemWidth: 400,
              scroll: false,
              children: [
                commentCard(
                    './assests/images/Review_user1.png',
                    'Asha Nair',
                    '4.5',
                    'Posted on 25th April',
                    '"Efficient Work!"',
                    'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical. ',
                    'white'),
                commentCard(
                    './assests/images/Review_user2.png',
                    'Asha Nair',
                    '4.5',
                    'Posted on 25th April',
                    '"Efficient Work!"',
                    'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical.',
                    'black'),
                commentCard(
                    './assests/images/Review_user3.png',
                    'Asha Nair',
                    '4.5',
                    'Posted on 25th April',
                    '"Efficient Work!"',
                    'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical.',
                    'white'),
                commentCard(
                    './assests/images/Review_user1.png',
                    'Asha Nair',
                    '4.5',
                    'Posted on 25th April',
                    '"Efficient Work!"',
                    'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical. ',
                    'black'),
                commentCard(
                    './assests/images/Review_user2.png',
                    'Asha Nair',
                    '4.5',
                    'Posted on 25th April',
                    '"Efficient Work!"',
                    'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical.',
                    'white'),
                commentCard(
                    './assests/images/Review_user3.png',
                    'Asha Nair',
                    '4.5',
                    'Posted on 25th April',
                    '"Efficient Work!"',
                    'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical.',
                    'black'),
              ])
        ],
      ),
    ),
  );
}

Widget commentCard(var imagePath, var name, var rating, var date, var title,
    var subTitle, var color) {
  var cardColor;
  var fontColor;
  if (color == 'white') {
    cardColor = Color(0xFFEFFDFF);
    fontColor = Colors.black;
  } else {
    cardColor = Color(0xFF002F3A);
    fontColor = Colors.white;
  }
  return Container(
    height: 221,
    width: 459,
    decoration: BoxDecoration(color: cardColor),
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                imagePath,
                height: 97.4,
                width: 97.4,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(color: fontColor, fontSize: 19),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    date,
                    style: TextStyle(color: fontColor, fontSize: 13),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      color: fontColor,
                      fontSize: 19,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
              Expanded(child: Container()),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('./assests/images/Review_rating.png'),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    rating,
                    style: TextStyle(color: Colors.orange, fontSize: 18),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
            child: Text(
              '"' + subTitle + '"',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: fontColor, fontSize: 15),
            ),
          ),
        ],
      ),
    ),
  );
}
