import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/data/preference/app_preferences.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/s_stock_detail.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/search_stock_data.dart';
import 'package:flutter/material.dart';

class SearchHistoryStockList extends StatefulWidget {
  const SearchHistoryStockList({super.key});

  @override
  State<SearchHistoryStockList> createState() => _SearchHistoryStockListState();
}

class _SearchHistoryStockListState extends State<SearchHistoryStockList>
    with SearchstockDataProvider {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 65,
      child: Obx(
        () => Column(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 8),
              child: ListView.builder(
                padding: const EdgeInsets.only(top: 5),
                scrollDirection: Axis.horizontal,
                itemCount: searchData.searchHistoryList.length,
                itemBuilder: (context, index) {
                  final stockName = searchData.searchHistoryList[index];
                  return Row(
                    children: [
                      Tap(
                          onTap: () {
                            Nav.push(StockDetailScreen(stockName));
                          },
                          child: stockName.text.make()),
                      Tap(
                          onTap: () {
                            searchData.removeHistory(stockName);
                          },
                          child: const Icon(Icons.close))
                    ],
                  )
                      .box
                      .withRounded(value: 6)
                      .color(context.appColors.roundedLayoutBackground)
                      .p8
                      .make();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
