import 'package:flutter/material.dart';

class SpecialNote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0x77F9A0A0),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Note*:',
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Text(
                  'We are currently open offline so feel free to reach out to us and give your car the care it deserves. \nJust give a ring to 521-2156-2347 and we will take care of the rest for you.',
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
              )
            ],
          ),
        ));
  }
}
