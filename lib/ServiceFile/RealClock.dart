//
// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart'; // For date formatting
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: RealTimeClock(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }
//
// class RealTimeClock extends StatefulWidget {
//   @override
//   _RealTimeClockState createState() => _RealTimeClockState();
// }
//
// class _RealTimeClockState extends State<RealTimeClock> {
//   String _timeString = '';
//   String _dateString = '';
//   late Timer _timer;
//
//   @override
//   void initState() {
//     super.initState();
//     _updateTime();
//     _timer = Timer.periodic(Duration(seconds: 1), (Timer t) => _updateTime());
//   }
//
//   void _updateTime() {
//     final DateTime now = DateTime.now();
//     final String formattedTime = DateFormat('hh:mm:ss a').format(now);
//     final String formattedDate = DateFormat('EEEE, MMMM d, y').format(now);
//
//     setState(() {
//       _timeString = formattedTime;
//       _dateString = formattedDate;
//     });
//   }
//
//   @override
//   void dispose() {
//     _timer.cancel();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.grey,
//         title: Text('Real-Time Clock'),
//         centerTitle: true,
//       ),
//       body: Center(
//           child:CircleAvatar(
//             radius: 200,
//             backgroundColor: Colors.grey,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Text(
//                   _dateString,
//                   style: TextStyle(fontSize: 24),
//                 ),
//                 SizedBox(height: 10),
//                 Text(
//                   _timeString,
//                   style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
//                 ),
//               ],
//             ),
//           )
//       ),
//     );
//   }
// }
