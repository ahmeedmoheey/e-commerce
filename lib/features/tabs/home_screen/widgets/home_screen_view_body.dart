import 'dart:async';

import 'package:e_commerce/core/utils/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_ads_images.dart';
import 'custom_category_items.dart';
import 'section_bar_widget.dart';

class HomeScreenViewBody extends StatefulWidget {
  const HomeScreenViewBody({super.key});

  @override
  State<HomeScreenViewBody> createState() => _HomeScreenViewBodyState();
}

class _HomeScreenViewBodyState extends State<HomeScreenViewBody> {
  final List<String> _adsImages = [
    AssetsManager.carouselSlider1,
    AssetsManager.carouselSlider2,
    AssetsManager.carouselSlider3,
  ];

  int _currentIndex = 0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _startImageSwitching();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAdsImages(
            currentIndex: _currentIndex,
            adsImages: _adsImages,
            timer: _timer,
          ),
          SizedBox(height: 24.h),
          SectionBarWidget(sectionName: "categories", function: () {}),
          SizedBox(
            height: 300.h,
            child: GridView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                return const CustomCategoryItems();
              },
            ),
          ),
          SizedBox(height: 12.h),
          SectionBarWidget(sectionName: "Brands", function: () {}),
          SizedBox(
            height: 300.h,
            child: GridView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                return const CustomCategoryItems();
              },
            ),
          ),
        ],
      ),
    );
  }

  void _startImageSwitching() {
    _timer = Timer.periodic(const Duration(milliseconds: 2500), (timer) {
      setState(() {
        _currentIndex = (_currentIndex + 1) % _adsImages.length;
      });
    });
  }
}
