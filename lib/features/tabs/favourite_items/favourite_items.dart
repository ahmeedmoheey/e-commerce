import 'package:e_commerce/features/tabs/favourite_items/widgets/fav_category_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavouriteItems extends StatelessWidget {
  const FavouriteItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 500.h ,
              child: ListView.builder(
               scrollDirection: Axis.vertical,
                itemCount: 3,

                itemBuilder: (context, index) {
                 return FavCategoryItems();

              },),
            )
          ],
        ),
      ),
    );
  }
}
