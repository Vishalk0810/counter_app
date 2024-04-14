import 'package:flutter/material.dart';
void main()
{
  runApp(const MyApp());
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
        title: const Text(
          'SPLITTER',style: TextStyle(
          fontSize: 30,
          color: Colors.white,
          fontWeight: FontWeight.w800,
        ),
        ),
        backgroundColor: Colors.black,
        leading: const Icon(Icons.account_circle,color: Colors.white,),
      ),
      backgroundColor: const Color(0xFFff9800),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 392.3,
            decoration: const BoxDecoration(
              color: Color(0xFFff9800),
            ),
            child:SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  const SizedBox(height: 10,),
                  horizontal_container(('1')),
                  const SizedBox(height: 10,),
                  horizontal_container(('2')),
                  const SizedBox(height: 10,),
                  horizontal_container(('3')),
                  const SizedBox(height: 10,),
                  horizontal_container(('4')),
                  const SizedBox(height: 10,),
                  horizontal_container(('5')),
                  const SizedBox(height: 10,),
                  horizontal_container(('6')),
                  const SizedBox(height: 10,),
                  horizontal_container(('7')),
                  const SizedBox(height: 10,),
                  horizontal_container(('8')),
                  const SizedBox(height: 10,),
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 392.3,
            decoration: const BoxDecoration(
              color: Color(0xFFff5722),
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: [
                  const SizedBox(width: 10,),
                  veritcal_container('1'),
                  const SizedBox(width: 10,),
                  veritcal_container('2'),
                  const SizedBox(width: 10,),
                  veritcal_container('3'),
                  const SizedBox(width: 10,),
                  veritcal_container('4'),
                  const SizedBox(width: 10,),
                  veritcal_container('5'),
                  const SizedBox(width: 10,),
                  veritcal_container('6'),
                  const SizedBox(width: 10,),
                  veritcal_container('7'),
                  const SizedBox(width: 10,),
                  veritcal_container('8'),
                  const SizedBox(width: 10,),
                ],
              ),
            ),
          ),
        ],
      )
    );
  }

  Container veritcal_container(text) {
    return Container(
            height: 370,
            width: 100,
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 2,
                  spreadRadius: 4,
                ),
              ],
              color: const Color(0xFF9e9e9e),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Text(
                '$text',style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w800,
                fontSize: 30,
              ),
              ),
            ),
          );
  }

  Container horizontal_container(text) {
    return Container(
            height: 100,
            width: 370,
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 2,
                  spreadRadius: 4,
                ),
              ],
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xFFffc107),
            ),
            child: Center(
              child: Text(
                '$text',style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w800,
                fontSize: 30,
              ),
              ),
            ),
          );
  }
}
