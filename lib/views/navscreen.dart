
import 'package:flutter/material.dart';
import 'package:manasa/configs/styles/app_colors.dart';
import 'package:manasa/views/category/category.dart';
import 'package:manasa/views/profile/account.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import 'home/home_screen.dart';


class NavScreen extends StatefulWidget {
  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavScreen(),
    );
  }
}


class BottomNavScreen extends StatefulWidget {

  final int index;
  final int tabIndex;
  BottomNavScreen({this.index,this.tabIndex});

  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {

  int _currentIndex = 0;
  int _tabIndex = 0;
  PersistentTabController _controller;

  @override
  void initState() {
    super.initState();
    setState(() {
      _currentIndex = widget.index ?? 0;
      _tabIndex = widget.tabIndex ?? 0;
    });
    _controller = PersistentTabController(initialIndex: _currentIndex);
  }



  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows: false, // Recommended to set 'resizeToAvoidBottomInset' as tre while using this argument. Default is true.
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      navBarStyle: NavBarStyle.simple, // Choose the nav bar style with this property.
    );

  }

  List<Widget> _buildScreens() {
    return [
      HomeScreen(),
      CategoryScreen(),
      ProfileScreen()
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
          activeColorSecondary: AppColors.textDarkColor,
          icon: Icon(Icons.home,),title:"HOME",textStyle: TextStyle(fontFamily: "PoppinsRegular",fontSize: 11)
      ),
      PersistentBottomNavBarItem(
          activeColorSecondary: AppColors.primaryDarkGreen,

          icon: Icon(Icons.category,),title:"CATEGORY",textStyle: TextStyle(fontFamily: "PoppinsRegular",fontSize: 11)
      ),
      // PersistentBottomNavBarItem(
      //     activeColorSecondary: AppColors.primaryDarkBlack,
      //     icon: Icon(Icons.dashboard),title:"ABOUT",textStyle: TextStyle(fontFamily: "PoppinsRegular",fontSize: 11)
      // ),

      PersistentBottomNavBarItem(
          activeColorSecondary: AppColors.primaryDarkGreen,

          icon: Icon(Icons.account_circle),title:"PROFILE",textStyle: TextStyle(fontFamily: "PoppinsRegular",fontSize: 11)
      ),
    ];
  }
}
