import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'The Wall',style: TextStyle(
          fontSize: 30,
          color: Colors.white,
          fontWeight: FontWeight.w800,
        ),
        ),
        backgroundColor: Colors.black,
        leading: Icon(Icons.account_circle,color: Colors.white,),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          brick1(),
          brick2(),
          brick1(),
          brick2(),
          brick1(),
          brick2(),
          brick1(),
          brick2(),


        ],
      ),
    );
  }

  Row brick2() {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(top: 8),
          height: 90,
          width: 134,
          decoration: BoxDecoration(
            color: Color(0xFF5d4037),
          ),
        ),
        SizedBox(width: 10),
        Container(
          margin: EdgeInsets.only(top: 8),
          height: 90,
          width: 105,
          decoration: BoxDecoration(
            color: Color(0xFF5d4037),
          ),
        ),
        SizedBox(width: 10),
        Container(
          margin: EdgeInsets.only(top: 8),
          height: 90,
          width: 133.727,
          decoration: BoxDecoration(
            color: Color(0xFF5d4037),
          ),
        ),
      ],
    );
  }

  Row brick1() {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(top: 8),
          height: 90,
          width: 105,
          decoration: BoxDecoration(
            color: Color(0xFF5d4037),
          ),
        ),
        SizedBox(width: 10),
        Container(
          margin: EdgeInsets.only(top: 8),
          height: 90,
          width: 162.727,
          decoration: BoxDecoration(
            color: Color(0xFF5d4037),
          ),
        ),
        SizedBox(width: 10),
        Container(
          margin: EdgeInsets.only(top: 8),
          height: 90,
          width: 105,
          decoration: BoxDecoration(
            color: Color(0xFF5d4037),
          ),
        ),
      ],
    );
  }
}
