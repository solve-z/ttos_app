import 'package:flutter/material.dart';
import 'package:ttos_app/common/common.dart';
import 'package:ttos_app/screen/main/tab/stock/tab/dummy_interest_stocks.dart';
import 'package:ttos_app/screen/main/tab/stock/tab/w_stock_item.dart';

class InterestStockList extends StatefulWidget {
  const InterestStockList({Key? key}) : super(key: key);

  @override
  State<InterestStockList> createState() => _InterestStockListState();
}

class _InterestStockListState extends State<InterestStockList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.backgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          height20,
          ...myInterestStocks.map((e) => StockItem(e)).toList(),
        ],
      ),
    );
  }
}
