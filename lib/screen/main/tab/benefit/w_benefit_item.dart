import 'package:flutter/material.dart';
import 'package:ttos_app/common/common.dart';
import 'package:ttos_app/common/widget/w_height_and_width.dart';
import 'package:ttos_app/screen/main/tab/benefit/vo_benefit.dart';

class BenefitItem extends StatelessWidget {
  final Benefit benefit;

  const BenefitItem({super.key, required this.benefit});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          benefit.imagePath,
          width: 50,
          height: 50,
        ),
        width10,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            benefit.subTitle.text.size(13).make(),
            height5,
            benefit.title.text
                .color(context.appColors.blueText)
                .size(13)
                .make(),
          ],
        )
      ],
    ).pSymmetric(v: 20);
  }
}
