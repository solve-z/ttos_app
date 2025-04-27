import 'package:flutter/material.dart';
import 'package:ttos_app/common/common.dart';
import 'package:ttos_app/common/data/preference/app_preferences.dart';
import 'package:ttos_app/common/widget/w_tap.dart';
import 'package:ttos_app/screen/main/tab/stock/search/s_stock_detail.dart';
import 'package:ttos_app/screen/main/tab/stock/search/search_stock_data.dart';

class SearchHistoryStockList extends StatefulWidget {
  const SearchHistoryStockList({super.key});

  @override
  State<SearchHistoryStockList> createState() => _SearchHistoryStockListState();
}

class _SearchHistoryStockListState extends State<SearchHistoryStockList>
    with SearchStockDataProvicder {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 65, // 원하는 높이 설정
      child: Obx(
        () => ListView.builder(
          padding: const EdgeInsets.only(top: 5),
          scrollDirection: Axis.horizontal,
          itemCount: searchData.searchHistoryList.length,
          itemBuilder: (context, index) {
            final stockName = searchData.searchHistoryList[index];
            return Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 8),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Tap(
                          onTap: () {
                            Nav.push(StockDetailScreen(stockName: stockName));
                          },
                          child:
                              searchData.searchHistoryList[index].text.make()),
                      Tap(
                          onTap: () {
                            searchData.remoteHistory(stockName);
                          },
                          child: const Icon(Icons.close))
                    ],
                  )
                      .box
                      .withRounded(value: 6)
                      .color(context.appColors.roundedLayoutBackground)
                      .p8
                      .make(),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
