import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttos_app/common/common.dart';
import 'package:ttos_app/screen/main/tab/stock/search/s_stock_detail.dart';
import 'package:ttos_app/screen/main/tab/stock/search/search_stock_data.dart';

class SearchAutoCompleteList extends StatelessWidget
    with SearchStockDataProvicder {
  final TextEditingController controller;
  SearchAutoCompleteList(this.controller, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final stock = searchData.autoCompleteList[index];
        final stockName = stock.name;
        return Tap(
          onTap: () {
            controller.clear();
            searchData.addHistory(stock);
            Nav.push(StockDetailScreen(
              stockName: stockName,
            ));
          },
          child: stockName.text.make().p(20),
        );
      },
      itemCount: searchData.autoCompleteList.length,
    );
  }
}
