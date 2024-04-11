import 'package:counter_app/counter_app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
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
        actions: [
          Icon(
            Icons.notifications_active,
            color: Colors.white,
          )
        ],
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text(
          'Map',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            map(iconname: Icon(Icons.exit_to_app,color: Colors.black,size: 25,),name: 'Exit'),
            map(iconname: Icon(Icons.play_arrow,color: Colors.black,size: 25,),name: 'Play'),
            map(iconname: Icon(Icons.pause,color: Colors.black,size: 25,),name: 'Pause'),
            map(iconname: Icon(Icons.stop,color: Colors.black,size: 25,),name: 'Stop'),
            map(iconname: Icon(Icons.cancel,color: Colors.black,size: 25,),name: 'Close'),
            map(iconname: Icon(Icons.delete,color: Colors.black,size: 25,),name: 'Delete'),
            map(iconname: Icon(Icons.email,color: Colors.black,size: 25,),name: 'Email'),
            map(iconname: Icon(Icons.notifications_active,color: Colors.black,size: 25,),name: 'Notification'),
            map(iconname: Icon(Icons.add,color: Colors.black,size: 25,),name: 'Add'),
          ],
        ),),
    );
  }

  Container map({required Icon iconname, required String name}) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 80,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              '$name',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: iconname,
          ),
        ],
      ),
    );
  }
}
List l1 =[

];