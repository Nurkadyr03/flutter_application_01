import 'package:flutter/material.dart';
import 'package:flutter_application_01/screens/jobs/jobs_jage.dart';
import 'package:flutter_application_01/screens/news/news_page.dart';
import 'package:flutter_application_01/screens/profile/profile.dart';


      
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedTab = 0;
  
  void onSelectedTab(int index) {
    setState(() {
      _selectedTab = index;
       
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedTab,
        children:  [
         JobsPage(),
         NewsPage(),
         ProfilePage(),
          
        ],
      ),
      bottomNavigationBar:BottomNavigationBar(
        currentIndex: _selectedTab,
        items:const [
           BottomNavigationBarItem(
              icon: Icon(Icons.equalizer), label: 'жумуш'),
           BottomNavigationBarItem(
              icon: Icon(Icons.blur_on_outlined,), label: 'жарыя'),
           BottomNavigationBarItem(
              icon: Icon(Icons.person), label: 'профиль'),
        ],
        onTap: onSelectedTab,
      ),
 
    );
  }
}

