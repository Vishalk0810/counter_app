import 'package:counter_app/chess.dart';
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
        leading: Icon(Icons.menu,),
        centerTitle: true,
        title: Text(
          'Icons Editor',style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.all(10),
                height: 270,
                width: 370,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 2,
                      spreadRadius: 4,
                    )
                  ],
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blue,
                ),
                child: Icon(selectIcons,color: selectColor),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              height: 70,
              width: 370,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 2,
                    spreadRadius: 4,
                  )
                ],
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Center(
                child: const Text(
                  'Select Colors',style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                  children: List.generate(colorlist.length, (index) => GestureDetector(
                      onTap: () {
                        setState(() {
                          selectColor = colorlist[index];
                        });
                      },
                      child: c1(Color : colorlist[index])))
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              height: 70,
              width: 370,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 2,
                    spreadRadius: 4,
                  )
                ],
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Center(
                child: const Text(
                  'Select Icons',style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                  children: List.generate(Ico.length, (index) => GestureDetector(
                    onTap:() {
                      setState(() {
                        selectIcons = Ico[index];
                      });
                    },
                    child: i1(vishal : Ico[index]),
                  ))
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container i1({required vishal}) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 2,
              spreadRadius: 4,
            )
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(20)
      ),
      child: Icon(vishal),
    );
  }

  Container c1({required Color}) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 2,
              spreadRadius: 4,
            )
          ],
          color: Color,
          borderRadius: BorderRadius.circular(20)
      ),
    );
  }
}

List Ico = [
  Icons.arrow_back_ios,
  Icons.arrow_forward_ios,
  Icons.alarm,
  Icons.call,
  Icons.search,
  Icons.add,
];
List colorlist =[
  Colors.tealAccent,
  Colors.black,
  Colors.blue,
  Colors.amber,
  Colors.red,
  Colors.orange,
];
Color selectColor = Colors.black;
IconData selectIcons = Icons.arrow_back_ios_new;