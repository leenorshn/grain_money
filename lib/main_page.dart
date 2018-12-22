import 'package:flutter/material.dart';
import 'package:grain_money/screens/HomeGrainScreen.dart';
import 'package:grain_money/screens/TransactionScreen.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  PageController _pageController;
  int _page=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: new PageView(
          children: [
            new HomeGrainScreen(),
            new TransactionScreen(),
            new Container(color: Colors.white),
          ],
          /// Specify the page controller
          controller: _pageController,
          onPageChanged: onPageChanged
      ),

      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet),title: Text("home")),
            BottomNavigationBarItem(icon: Icon(Icons.repeat),title: Text("transaction")),
            BottomNavigationBarItem(icon: Icon(Icons.account_balance),title: Text("bank")),
          ],
          onTap: navigationTapped,
          currentIndex: _page
      ),
    );
  }


  void navigationTapped(int page){

    // Animating to the page.
    // You can use whatever duration and curve you like
    _pageController.animateToPage(
        page,
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease
    );
  }


  void onPageChanged(int page){
    setState((){
      this._page = page;
    });
  }

  @override
  void initState() {
    super.initState();
    _pageController = new PageController();
  }

  @override
  void dispose(){
    super.dispose();
    _pageController.dispose();
  }
}
