import 'package:flutter/material.dart';
import 'package:magister_clone/alert.dart';
import 'package:magister_clone/home.dart';

class teste extends StatefulWidget {
  teste({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<teste> {
  int indexcurrent = 0;
  late PageController pc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pc = PageController(initialPage: indexcurrent);
  }

  setindexcurrent(index) {
    setState(() {
      indexcurrent = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pc,
        children: [
          HomeScreen(),
          NotificationTab(),
        ],
        onPageChanged: setindexcurrent,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexcurrent,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ' '),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: '')
        ],
        onTap: (index) {
          pc.animateToPage(index,
              duration: Duration(milliseconds: 400), curve: Curves.ease);
        },
      ),
    );
  }
}
