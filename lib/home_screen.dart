import 'package:firebase/book_list_screen.dart';
import 'package:firebase/student_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double screenHeight = 0;
  double screenWidth = 0;

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text('Home Screen'),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 5, right: 5),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>BookListScreen()));
                    },
                    child: Card(
                      elevation: 5,
                      child: Container(
                        color: Colors.blue.shade300,
                        height: screenHeight / 5,
                        width: screenHeight / 5,
                        child: const Center(
                            child: Text(
                          'Books List',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        )),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 5, right: 5),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>StudentScreen()));
                    },
                    child: Card(
                      elevation: 5,
                      child: Container(
                        color: Colors.blue.shade300,
                        height: screenHeight / 5,
                        width: screenHeight / 5,
                        child: const Center(
                            child: Text('Students List',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white))),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ));
  }
}
