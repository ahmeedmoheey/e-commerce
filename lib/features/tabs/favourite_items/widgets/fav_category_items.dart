import 'package:e_commerce/core/utils/color_managrt.dart';
import 'package:e_commerce/core/utils/icons_manager.dart';
import 'package:e_commerce/core/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/assets_manager.dart';
import '../../../main_layout.dart';

class FavCategoryItems extends StatelessWidget {
  const FavCategoryItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      height: 113.h,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: ColorManager.primary.withOpacity(.6),
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              AssetsManager.shoesss,
              height: 113.h,
              width: 113.h,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 10.w),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// العنوان والأيقونة
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Nike Sneakers',
                        style: TextStyles.personalTexts,
                      ),
                      IconButton(
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        onPressed: () {},
                        icon: SvgPic(
                          pic: IconsManager.favvvv,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.h),
                  Row(
                    children: [
                      Container(
                        width: 15.w,
                        height: 15.h,
                        decoration: BoxDecoration(
                          color: ColorManager.darkGrey,
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(width: 8.w),
                      Text(
                        "Black color",
                        style: TextStyles.viewAll.copyWith(fontSize: 20.sp),
                      ),
                    ],
                  ),
                  Spacer(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        "EGP 1,200",
                        style: TextStyles.personalTexts,
                      ),
                      SizedBox(width: 8.w),
                      Text(
                        "EGP 1,500",
                        style: TextStyles.text11.copyWith(
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      Spacer(),
                      SizedBox(
                        height: 36.h,
                        width: 62,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            backgroundColor: ColorManager.primary,
                          ),
                          onPressed: () {},
                          child: Center(
                            child: const Text(
                              "Add to Cart",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
