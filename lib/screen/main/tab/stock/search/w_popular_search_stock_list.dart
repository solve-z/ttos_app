import 'package:flutter/material.dart';
import 'package:ttos_app/common/common.dart';
import 'package:ttos_app/common/dart/extension/datetime_extension.dart';
import 'package:ttos_app/screen/main/tab/stock/search/popular_stock_dummy.dart';
import 'package:ttos_app/screen/main/tab/stock/search/w_popular_stock_item.dart';

class PopularSearchStockList extends StatelessWidget {
  const PopularSearchStockList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            '인기검색'.text.bold.make(),
            emptyExpanded,
            '오늘 ${DateTime.now().formattedTime} 기준'.text.size(12).make(),
          ],
        ),
        height20,
        ...popularStockList
            .mapIndexed((element, index) =>
                PopularStockItem(stock: element, number: index + 1))
            .toList()
      ],
    ).pSymmetric(h: 20);
  }
}
