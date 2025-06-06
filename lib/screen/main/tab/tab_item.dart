import 'package:ttos_app/common/common.dart';
import 'package:ttos_app/screen/main/tab/all/f_all.dart';
import 'package:ttos_app/screen/main/tab/benefit/f_benefit.dart';
import 'package:ttos_app/screen/main/tab/home/f_home.dart';
import 'package:flutter/material.dart';
import 'package:ttos_app/screen/main/tab/stock/f_stock.dart';
import 'package:ttos_app/screen/main/tab/ttospay/f_ttospay.dart';

enum TabItem {
  home(Icons.home, '홈', HomeFragment()),
  benefit(Icons.star, '혜택', BenefitFragment()),
  ttosspay(Icons.payment, '토스페이', TtospayFragment()),
  stock(Icons.candlestick_chart, '주식', StockFragment()),
  all(Icons.menu, '전체', AllFragment());

  final IconData activeIcon;
  final IconData inActiveIcon;
  final String tabName;
  final Widget firstPage;

  const TabItem(this.activeIcon, this.tabName, this.firstPage,
      {IconData? inActiveIcon})
      : inActiveIcon = inActiveIcon ?? activeIcon;

  BottomNavigationBarItem toNavigationBarItem(BuildContext context,
      {required bool isActivated}) {
    return BottomNavigationBarItem(
        icon: Icon(
          key: ValueKey(tabName),
          isActivated ? activeIcon : inActiveIcon,
          color: isActivated
              ? context.appColors.iconButton
              : context.appColors.iconButtonInactivate,
        ),
        label: tabName);
  }
}
