import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ibrat_clone/pages/home/home_view.dart';
import 'package:ibrat_clone/pages/profile_view/profile_view.dart';
import 'package:line_icons/line_icons.dart';

import '../info_view/info_view.dart';

class HomeState extends StatefulWidget {
  const HomeState({super.key});

  @override
  State<HomeState> createState() => _HomeStateState();
}

class _HomeStateState extends State<HomeState> {
  int _currentIndex = 0;
  List<Widget> pages = [];

  Widget? _pageIndex;

  @override
  void initState() {
    super.initState();
    pages
      ..add(const HomeView())
      ..add(const InfoView())
      ..add(const ProfileView());

    _pageIndex = const HomeView();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AnnotatedRegion(
        value: const SystemUiOverlayStyle(
            statusBarColor: Color(0xFF023047),
            statusBarIconBrightness: Brightness.light,
        ),
        child: Scaffold(
          backgroundColor: const Color(0xFF023047),
          body: _pageIndex!,
          bottomNavigationBar: Container(
            padding:const EdgeInsets.symmetric(horizontal: 20,vertical: 12),
            height: 60,
            decoration:const BoxDecoration(
              border: Border(top: BorderSide(color: Colors.blue)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildNavItem(Icons.home_filled, 0,"Main"),
                buildNavItem(LineIcons.crown, 1,"Leads"),
                buildNavItem(CupertinoIcons.person_alt, 2,"Profile"),
              ],
            ),
          )
        ),
      ),
    );
  }

  void _changePage(int currentIndex) {
    setState(() {
      _currentIndex = currentIndex;
      _pageIndex = pages[currentIndex];
    });
  }

  Widget buildNavItem(IconData icon, int index,String label) {
    return GestureDetector(
      onTap: () => _changePage(index),
      child: AnimatedContainer(
        curve: Curves.easeIn,
        padding:const EdgeInsets.all(4),
        duration:const Duration(milliseconds: 400),
        height:38,
        width:_currentIndex== index ? 100 : 86,
        decoration: BoxDecoration(
           color: _currentIndex == index ? Colors.blue : Colors.transparent,
          borderRadius:_currentIndex == index ? BorderRadius.circular(12) : BorderRadius.circular(0),
        ),
        child:_currentIndex == index ?  Row(
          children: [
            Icon(icon,color: _currentIndex == index ? Colors.white : Colors.grey),
          const  SizedBox(width: 4,),
            Text(label,style:const TextStyle(color: Colors.white,fontSize: 18),)
          ],
        ) : Icon(icon,color: Colors.white),
      ),
    );
  }
}
// BottomNavigationBar(
// useLegacyColorScheme: false,
// backgroundColor: Color(0xFF14213d),
// selectedFontSize: 18,
// unselectedFontSize: 16,
// currentIndex: _currentIndex,
// onTap: (int index) => _changePage(index),
// selectedItemColor: Colors.white,
// unselectedItemColor: Colors.grey,
// items: const [
// BottomNavigationBarItem(
// icon: Icon(Icons.home_filled),
// label: "Asosiy",
// ),
// BottomNavigationBarItem(
// icon: Icon(LineIcons.crown),
// label: "Peshqadamlar",
// ),
// BottomNavigationBarItem(
// icon: Icon(CupertinoIcons.person),
// label: "Profil",
// ),
// ],
// ),