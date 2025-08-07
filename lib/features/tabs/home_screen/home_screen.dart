import 'package:e_commerce/features/tabs/home_screen/widgets/home_screen_view_body.dart';
import 'package:e_commerce/utils/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'widgets/custom_appbar_widget.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomAppBarWidgets(),
      body: HomeScreenViewBody(),
    ) ;
  }
}
