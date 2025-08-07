
import 'package:e_commerce/core/widgets/custom_appbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../core/utils/icons_manager.dart';
import 'tabs/category_items/category_items.dart';
import 'tabs/favourite_items/favourite_items.dart';
import 'tabs/personal_info/personal_info.dart';
import 'tabs/home_screen/home_screen.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  List<Widget> tabs = [
    HomeScreen(),
    CategoryItems(),
    FavouriteItems(),
    PersonalInfo()

  ];
  int _selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: false,
      appBar:  _selectIndex ==3? null : CustomAppBarWidgets(),

      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: BottomNavigationBar(
          currentIndex: _selectIndex,
          onTap: (index) {
            setState(() {
              _selectIndex= index;
            });
          },

          items: [
              CustomBottomNavBarItem(IconsManager.icon1, ""),
              CustomBottomNavBarItem(IconsManager.icon2, ""),
              CustomBottomNavBarItem(IconsManager.icon3, ""),
              CustomBottomNavBarItem(IconsManager.icon4, ""),
          ],
        ),
      ),
           body:  tabs[_selectIndex],
    );
  }
}




class SvgPic extends StatelessWidget {
   SvgPic({super.key,required this.pic, this.color, this.colorFilter});
   final String pic;
 final  Color? color;
 final ColorFilter? colorFilter;

  @override
  Widget build(BuildContext context) {
    return  SvgPicture.asset(
      colorFilter:colorFilter ,
      pic,
      color:color ,
    );
  }
}

class CustomBottomNavBarItem extends BottomNavigationBarItem {
  String iconPath;
  String title;
  CustomBottomNavBarItem(this.iconPath, this.title) : super(
    label: title,
    icon:  SvgPic(pic: iconPath,color: Colors.white) ,
    activeIcon: CircleAvatar(
  backgroundColor: Colors.white,
      child: SvgPic(
        color: Color(0xFF004182),
        pic: iconPath,),
    ),
  );
}
