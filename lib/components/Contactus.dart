import 'package:flutter/material.dart';

class Contactus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      if (constraint.maxWidth > 900) {
        return desktopView();
      } else {
        return mobileView();
      }
    });
  }
}

Widget desktopView() {
  return Container(
    color: Colors.black,
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                './assests/images/logo.png',
                height: 208,
                width: 165,
                fit: BoxFit.fill,
              ),
              Column(
                children: [
                  Text(
                    'MOP SERVICES',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 3),
                  ),
                  Text(
                    ' Be a part of us today',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1.3),
                  )
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 100),
            child: Row(
              children: [
                Flexible(
                  child: Column(
                    children: [
                      inputField('Your name'),
                      inputField('Your Email'),
                      inputField('Contact Number'),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Colors.green, width: 2.0),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'I am not a Robot',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                    child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      inputField(
                          'How would you like to be a part of the MOP journey?',
                          lines: 8),
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xFF28B67E))),
                              onPressed: null,
                              child: Container(
                                height: 40,
                                width: 70,
                                child: Center(
                                  child: Text(
                                    'SUBMIT',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              )),
                        )
                      ])
                    ],
                  ),
                ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 100),
            child: Row(
              children: [
                Flexible(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    child: Column(
                      children: [
                        Image.asset(
                          './assests/images/Contactus_map.png',
                          fit: BoxFit.fitWidth,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 80,
                ),
                Flexible(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text(
                          'Address',
                        ),
                        text(
                          'Alluri Trade Centre, OPP: Paradise restaurant,5th floor, Usha Mullapudi Cardio Hospital Rd,Venkat Nagar Colony, Hyderabad, Telangana 500072.',
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  text(
                                    'Email',
                                  ),
                                  text(
                                    'Phone Number',
                                  ),
                                  text(
                                    'Mobile Number',
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 40,
                            ),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  text(
                                    'Admin@Mopwash.com',
                                  ),
                                  text(
                                    '52121562347',
                                  ),
                                  text(
                                    '+91 8310185672',
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ))
              ],
            ),
          )
        ],
      ),
    ),
  );
}

Widget mobileView() {
  return Container(
    color: Colors.black,
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset('./assests/images/logo.png'),
              Column(
                children: [
                  Text(
                    'MOP SERVICES',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 3),
                  ),
                  Text(
                    ' Be a part of us today',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1.3),
                  ),
                ],
              )
            ],
          ),
          inputField('Your name'),
          inputField('Your Email'),
          inputField('Contact Number'),
          inputField('How would you like to be a part of the MOP journey?',
              lines: 8),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.green, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'I am not a Robot',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                )
              ],
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFF28B67E))),
                  onPressed: null,
                  child: Container(
                    height: 40,
                    width: 70,
                    child: Center(
                      child: Text(
                        'SUBMIT',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )),
            )
          ]),
          Image.asset(
            './assests/images/Contactus_map.png',
            fit: BoxFit.fitWidth,
          ),
          text(
            'Address',
          ),
          text(
            'Alluri Trade Centre, OPP: Paradise restaurant,5th floor, Usha Mullapudi Cardio Hospital Rd,Venkat Nagar Colony, Hyderabad, Telangana 500072.',
          ),
          Row(
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    text(
                      'Email',
                    ),
                    text(
                      'Phone Number',
                    ),
                    text(
                      'Mobile Number',
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 40,
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    text(
                      'Admin@Mopwash.com',
                    ),
                    text(
                      '52121562347',
                    ),
                    text(
                      '+91 8310185672',
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    ),
  );
}

Widget text(var str) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(
      str,
      style: TextStyle(color: Colors.white, fontSize: 30),
    ),
  );
}

Widget inputField(var hintname, {var lines = 1}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: TextField(
          style: TextStyle(fontSize: 20),
          maxLines: lines,
          cursorColor: Colors.black87,
          decoration: InputDecoration(
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              hintText: hintname,
              fillColor: Colors.white,
              focusColor: Colors.white,
              hoverColor: Colors.white),
        ),
      ),
    ),
  );
}
