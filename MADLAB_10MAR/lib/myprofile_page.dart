import 'package:flutter/material.dart';
class MyProfilePage extends StatefulWidget {
const MyProfilePage({super.key});
@override
State<MyProfilePage> createState() => _MyProfilePageState();
}
class _MyProfilePageState extends State<MyProfilePage> {
@override
Widget build(BuildContext context) {
 return Scaffold(
 appBar: AppBar(title: Text('My profile page')),
 body: SingleChildScrollView(
 child: Center(
 child: Column(
 children: [
 //! Profile Picture
 Container(
 margin: EdgeInsets.only(top: 20),
 child: CircleAvatar(
 backgroundColor: Colors.teal,
 radius: 70,
 backgroundImage: AssetImage('assets/file.png'),
 ),
 ),
 Container(
 margin: EdgeInsets.only(top: 20),
 child: Text(
 'Md Zahid Hasan Patwary',
 style: TextStyle(
 fontSize: 20,
 fontWeight: FontWeight.bold,
 ),
 ),
 ),
 Container(
 margin: EdgeInsets.only(top: 10),
 child: Text('mdzahidhasanpatwary@gmail.com'),
 ),
 SizedBox(height: 30),
 Text(
 'Daffodil International University',
 style: TextStyle(
 fontSize: 14,
 fontWeight: FontWeight.bold,
 ),
 ),
 Text('B.Sc in CSE'),
 SizedBox(height: 15),
 Text(
 'Chandpur Govt. Collage',
 style: TextStyle(
 fontSize: 14,
 fontWeight: FontWeight.bold,
 ),
 ),
 Text('HSC'),
 SizedBox(height: 40),
 Text(
 'Learn',
 style: TextStyle(
 fontSize: 30,
 fontWeight: FontWeight.bold,
 ),
 ),
 SizedBox(height: 15),
 Text('C, Java, HTML, CSS, PHP, Flutter, Dart, Python')
 ],
 ),
 ),
 ),
 );
}
}