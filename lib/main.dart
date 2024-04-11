import 'package:counter_app/counter_app.dart';
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
        backgroundColor: Colors.black,
        leading: Icon(Icons.menu,color: Colors.white,),
        centerTitle: true,
        title: Text(
          'Chess',style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 0.32,color: Colors.black)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            row1(),
            row2(),
            row1(),
            row2(),
            row1(),
            row2(),
            row1(),
            row2(),
          ],
        ),
      ),
    );
  }

  Row row2() {
    return Row(
          children: [
            Container(
              height: 49,
              width: 49,
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
              ),
            ),
            Container(
              height: 49,
              width: 49,
              decoration: BoxDecoration(
                color: Colors.black,
              ),
            ),
            Container(
              height: 49,
              width: 49,
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
              ),
            ),
            Container(
              height: 49,
              width: 49,
              decoration: BoxDecoration(
                color: Colors.black,
              ),
            ),
            Container(
              height: 49,
              width: 49,
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
              ),
            ),
            Container(
              height: 49,
              width: 49,
              decoration: BoxDecoration(
                color: Colors.black,
              ),
            ),
            Container(
              height: 49,
              width: 49,
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
              ),
            ),
            Container(
              height: 49,
              width: 49,
              decoration: BoxDecoration(
                color: Colors.black,
              ),
            ),
          ],
        );
  }

  Row row1() {
    return Row(
          children: [
            Container(
              height: 49,
              width: 49,
              decoration: BoxDecoration(
                color: Colors.black,
              ),
            ),
            Container(
              height: 49,
              width: 49,
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
              ),
            ),
            Container(
              height: 49,
              width: 49,
              decoration: BoxDecoration(
                color: Colors.black,
              ),
            ),
            Container(
              height: 49,
              width: 49,
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
              ),
            ),
            Container(
              height: 49,
              width: 49,
              decoration: BoxDecoration(
                color: Colors.black,
              ),
            ),
            Container(
              height: 49,
              width: 49,
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
              ),
            ),
            Container(
              height: 49,
              width: 49,
              decoration: BoxDecoration(
                color: Colors.black,
              ),
            ),
            Container(
              height: 49,
              width: 49,
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
              ),
            ),
          ],
        );
  }
}
