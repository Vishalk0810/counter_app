import 'package:counter_app/utils/list.dart';
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
        backgroundColor: Colors.grey.shade200,
        centerTitle: true,
        leading: Icon(
          Icons.menu,
          color: Colors.grey.shade700,
        ),
        title: Text(
          'Icon',
          style: TextStyle(
              color: Colors.grey.shade700, fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  icons.length,
                  (index) => icon_row1(index, icons[index]['i1']),
                ),
              ),
            ),
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  icons.length,
                  (index) => icon_row1(index, icons[index]['i2']),
                ),
              ),
            ),
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  icons.length,
                  (index) => icon_row1(index, icons[index]['i3']),
                ),
              ),
            ),
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  icons.length,
                  (index) => icon_row1(index, icons[index]['i4']),
                ),
              ),
            ),
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  icons.length,
                  (index) => icon_row1(index, icons[index]['i5']),
                ),
              ),
            ),
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  icons.length,
                  (index) => icon_row1(index, icons[index]['i6']),
                ),
              ),
            ),
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  icons.length,
                  (index) => icon_row1(index, icons[index]['i7']),
                ),
              ),
            ),
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  icons.length,
                  (index) => icon_row1(index, icons[0]['i8'][index]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget icon_row1(int index, Icon i1) {
  return Container(
    height: 120,
    width: 120,
    margin: EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: Colors.tealAccent,
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    child: i1,
  );
}
