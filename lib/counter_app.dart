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
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _State();
}

class _State extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu,color: Colors.black,),
        actions: const [Icon(Icons.notifications_active,color: Colors.black,)],
        centerTitle: true,
        title: const Text(
          'Counter App',style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold
        ),
        ),
      ),
      body: Center(
        child: Container(
          child: Text(
            '$count',style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 50,
          ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add,color: Colors.black,size: 30,),
        onPressed: () {
          setState(() {
            count ++;
          });
        },

      ),
    );
  }
}
int count = 0;
