import 'package:e_commerce/core/utils/color_managrt.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/text_styles.dart';

class SectionBarWidget extends StatelessWidget {
  const SectionBarWidget({super.key,  this.sectionName, required this.function,});
  final String?  sectionName;
  final Function function;


  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('$sectionName',style: TextStyles.categories,),
          TextButton(onPressed: (){
            function();
          }, child:Text("view all",style: TextStyles.viewAll,))
        ],
      ),
    );
  }
}
