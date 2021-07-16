import 'package:demoapp/components/Contactus.dart';
import 'package:demoapp/components/FAQ.dart';
import 'package:demoapp/components/Features.dart';
import 'package:demoapp/components/Join.dart';
import 'package:demoapp/components/Luxury.dart';
import 'package:demoapp/components/Navbar.dart';
import 'package:demoapp/components/Process.dart';
import 'package:demoapp/components/Review.dart';
import 'package:demoapp/components/Services.dart';
import 'package:demoapp/components/SpecialNote.dart';
import 'package:demoapp/components/Working.dart';
import 'package:demoapp/components/hero.dart' as hero;
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'demoapp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Navbar(),
          hero.Hero(),
          Working(),
          Process(),
          SpecialNote(),
          Services(),
          Features(),
          Luxury(),
          Join(),
          FAQ(),
          Review(),
          Contactus(),
        ],
      ),
    ));
  }
}





// import 'dart:math' as math;

// import 'package:flutter/material.dart';
// import 'package:scroll_to_index/scroll_to_index.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Scroll To Index Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'Scroll To Index Demo'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, @required this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   static const maxCount = 100;
//   final random = math.Random();
//   final scrollDirection = Axis.vertical;

//   AutoScrollController controller;
//   List<List<int>> randomList;

//   @override
//   void initState() {
//     super.initState();
//     controller = AutoScrollController(
//         viewportBoundaryGetter: () =>
//             Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
//         axis: scrollDirection);
//     randomList = List.generate(maxCount,
//         (index) => <int>[index, (1000 * random.nextDouble()).toInt()]);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: ListView(
//         scrollDirection: scrollDirection,
//         controller: controller,
//         children: randomList.map<Widget>((data) {
//           return Padding(
//             padding: EdgeInsets.all(8),
//             child: _getRow(data[0], math.max(data[1].toDouble(), 50.0)),
//           );
//         }).toList(),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _scrollToIndex,
//         // tooltip: 'Increment',
//         child: Text(counter.toString()),
//       ),
//     );
//   }

//   int counter = -1;
//   Future _scrollToIndex() async {
//     setState(() {
//       counter++;

//       if (counter >= maxCount) counter = 0;
//     });

//     await controller.scrollToIndex(counter,
//         preferPosition: AutoScrollPosition.begin);
//     controller.highlight(counter);
//   }

//   Widget _getRow(int index, double height) {
//     return _wrapScrollTag(
//         index: index,
//         child: Container(
//           padding: EdgeInsets.all(8),
//           alignment: Alignment.topCenter,
//           height: height,
//           decoration: BoxDecoration(
//               border: Border.all(color: Colors.lightBlue, width: 4),
//               borderRadius: BorderRadius.circular(12)),
//           child: Text('index: $index, height: $height'),
//         ));
//   }

//   Widget _wrapScrollTag({@required int index, @required Widget child}) =>
//       AutoScrollTag(
//         key: ValueKey(index),
//         controller: controller,
//         index: index,
//         child: child,
//         highlightColor: Colors.black.withOpacity(0.1),
//       );
// }
