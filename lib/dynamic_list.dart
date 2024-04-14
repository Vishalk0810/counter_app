import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
          'Dynamic List',style: TextStyle(
            color: Colors.white
        ),
        ),
        backgroundColor: Color(0xFF244d61),
        leading: Icon(Icons.menu,color: Colors.white),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: List.generate(l1.length, (index) => cntr1(index)),
        ),
      ),
      floatingActionButton:
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                l1.add(l1.length);
              });
            },
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF244d61),
              ),
              child: Icon(Icons.add,color: Colors.white,),
            ),
          ),
          SizedBox(width: 7,),
          GestureDetector(
            onTap: () {
              setState(() {
                l1.removeAt(l1.length-1);
              });
            },
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF244d61),
              ),
              child: Icon(Icons.remove,color: Colors.white,),
            ),
          ),
        ],
      ),
    );
  }
  Container cntr1(int index) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color:  (index % 2==0)? const Color(0xff75E2FF): const Color(0xff5689C0),
      ),
      child: Center(
        child: Text(
          '$index',style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 20,
          color: Colors.white,
        ),
        ),
      ),
    );
  }
}

List l1 =[
  0,
];
