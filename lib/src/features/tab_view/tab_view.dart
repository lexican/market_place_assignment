import 'package:flutter/material.dart';
import 'package:market_place_assignment/gen/assets.gen.dart';
import 'package:market_place_assignment/src/core/app_colors.dart';
import 'package:market_place_assignment/src/core/widgets/bottom_navigation_bar/bottom_navigation_bar_item.dart';
import 'package:market_place_assignment/src/features/home/home.dart';
import 'package:market_place_assignment/src/features/settings/settings.dart';
import 'package:market_place_assignment/src/features/voucher/voucher.dart';
import 'package:market_place_assignment/src/features/wallet/wallet.dart';

class TabView extends StatefulWidget {
  const TabView({super.key});

  @override
  State<TabView> createState() => _TabViewState();
}

class _TabViewState extends State<TabView> {
  int _currentTabIndex = 0;

  void _setCurrentTabIndex(int index) {
    setState(() {
      _currentTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: IndexedStack(
        index: _currentTabIndex,
        children: const [
          Home(),
          Voucher(),
          Wallet(),
          Settings(),
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        color: Colors.white,
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppBottomNavigationBarItem(
              activeIconPath: Assets.icons.homeActive.path,
              inactiveIconPath: Assets.icons.homeInactive.path,
              label: "Home",
              tabIndex: 0,
              setCurrentTabIndex: _setCurrentTabIndex,
              currentTabIndex: _currentTabIndex,
              isSelectedTab: _currentTabIndex == 0,
            ),
            AppBottomNavigationBarItem(
              activeIconPath: Assets.icons.voucherActive.path,
              inactiveIconPath: Assets.icons.voucherActive.path,
              activeIconColor: AppColors.primaryColor,
              label: "Voucher",
              tabIndex: 1,
              setCurrentTabIndex: _setCurrentTabIndex,
              currentTabIndex: _currentTabIndex,
              isSelectedTab: _currentTabIndex == 1,
            ),
            AppBottomNavigationBarItem(
              activeIconPath: Assets.icons.walletActive.path,
              inactiveIconPath: Assets.icons.walletInactive.path,
              label: "Wallet",
              tabIndex: 2,
              setCurrentTabIndex: _setCurrentTabIndex,
              currentTabIndex: _currentTabIndex,
              isSelectedTab: _currentTabIndex == 2,
            ),
            AppBottomNavigationBarItem(
              activeIconPath: Assets.icons.settingsActive.path,
              inactiveIconPath: Assets.icons.settingsInactive.path,
              label: "Settings",
              tabIndex: 3,
              setCurrentTabIndex: _setCurrentTabIndex,
              currentTabIndex: _currentTabIndex,
              isSelectedTab: _currentTabIndex == 3,
            ),
          ],
        ),
      ),
    );
  }
}
