import 'package:flutter/material.dart';
import 'package:recipe_app/views/bookmark_view.dart';
import 'package:recipe_app/views/home_view.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({ Key? key }) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _currentIndex = 0;
  final List<Widget> _views = [
     HomeView(),
     BookmarkView(),
    // const FavouriteView(),
    //  ProfileView()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: _views,
        index: _currentIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        currentIndex: _currentIndex,
        onTap: (index) => setState(() {
          _currentIndex = index;
        }),
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_border_outlined), label: 'Favorite'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_outlined), label: 'Notification'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: 'Account')
        ],
      ),
    
    );
  }
}