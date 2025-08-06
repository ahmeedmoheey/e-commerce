import 'package:e_commerce/utils/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_appbar_widget.dart';


class HomeScreenViewBody extends StatelessWidget {
  const HomeScreenViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
       const   CustomAppBarWidgets(),

      ],
    )  ;
  }
}
