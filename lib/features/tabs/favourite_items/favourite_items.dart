import 'package:e_commerce/features/tabs/favourite_items/widgets/fav_category_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavouriteItems extends StatelessWidget {
  const FavouriteItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const  EdgeInsets.all(10),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
             scrollDirection: Axis.vertical,
              itemCount: 10,
              itemBuilder: (context, index) {
               return const  FavCategoryItems();

            },),
          )
        ],
      ),
    );
  }
}
