import 'package:e_commerce/utils/assets_manager.dart';
import 'package:e_commerce/utils/icons_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../category_items/category_items.dart';
import '../favourite_items/favourite_items.dart';
import '../personal_info/personal_info.dart';
import 'widgets/home_screen_view_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> tabs = [
    HomeScreenViewBody(),
    CategoryItems(),
    FavouriteItems(),
    PersonalInfo()

  ];
  int _selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

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
   SvgPic({super.key,required this.pic, this.color});
   final String pic;
 final  Color? color;

  @override
  Widget build(BuildContext context) {
    return  SvgPicture.asset(
      pic,
      color:color ,
    );
  }
}

class CustomBottomNavBarItem extends BottomNavigationBarItem {
  String iconPath;
  String title;
  CustomBottomNavBarItem(this.iconPath, this.title)
      : super(
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
