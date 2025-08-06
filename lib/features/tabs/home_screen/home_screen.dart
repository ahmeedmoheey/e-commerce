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
          onTap: (index) {
            setState(() {
              _selectIndex= index;
            });
          },

          items: [
              BottomNavigationBarItem(
                label: "",
                icon:SvgPic(pic: IconsManager.icon1),  ),
              BottomNavigationBarItem(
                label: "",
                icon:SvgPic(pic: IconsManager.icon2),  ),
              BottomNavigationBarItem(
                label: "",
                icon:  SvgPic( pic: IconsManager.icon3),  ),
              BottomNavigationBarItem(
                label: "",
                icon: SvgPic(pic: IconsManager.icon4) ),
          ],
        ),
      ),
           body:  tabs[_selectIndex],
    );
  }
}




class SvgPic extends StatelessWidget {
   SvgPic({super.key,required this.pic});
  String pic;

  @override
  Widget build(BuildContext context) {
    return  SvgPicture.asset(pic);
  }
}

