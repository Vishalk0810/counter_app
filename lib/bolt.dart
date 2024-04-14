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
          'BOLT',style: TextStyle(
          fontSize: 30,
          color: Colors.white,
          letterSpacing: 18,
        ),
        ),
        backgroundColor: Colors.black,
        leading: Icon(Icons.account_circle,color: Colors.white,),
      ),
      backgroundColor: Colors.yellow.shade700,
      body: Center(
        child: Column(
          children: [
            Container(
              height: 784.7,
              width: 80,
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Center(
                child: const Text(
                  '⚡',style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.w800,
                ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
