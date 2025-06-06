import 'package:flutter/material.dart';
import 'package:ttos_app/common/common.dart';
import 'package:ttos_app/screen/main/tab/stock/vo/vo_popular_stock.dart';

class PopularStockItem extends StatelessWidget {
  final PopularStock stock;
  final int number;
  const PopularStockItem(
      {super.key, required this.stock, required this.number});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 40, child: number.text.make()),
        width30,
        stock.name.text.make(),
        emptyExpanded,
        stock.todayPercentage.text
            .color(stock.getTodayPercentageColor(context))
            .make()
      ],
    ).pSymmetric(v: 25);
  }
}
