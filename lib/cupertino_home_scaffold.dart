import 'package:auth/core/common/widgets/build_text.dart';
import 'package:auth/features/home/presentation/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'core/common/widgets/tab_items.dart';
import 'features/companies/presentation/pages/companies_page.dart';
import 'features/profile/presentation/pages/profile_page.dart';
import 'features/proposal/presentation/pages/proposal_page.dart';


class CupertinoHomeScaffold extends StatelessWidget {
  final TabItem currentTab;
  final ValueChanged<TabItem> onSelectTab;
  final Map<TabItem, GlobalKey<NavigatorState>> navigatorKeys;

  CupertinoHomeScaffold({
    @required this.currentTab,
    @required this.onSelectTab,
    @required this.navigatorKeys,
  });

  Map<TabItem, WidgetBuilder> get widgetBuilders{
    return {
      TabItem.home: (_) => HomePage(),
      TabItem.proposal: (_) => ProposalPage(),
      TabItem.companies: (_) => CompaniesPage(),
      TabItem.profile: (_) => ProfilePage(),
    };
  }
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          _buildItem(TabItem.home),
          _buildItem(TabItem.proposal),
          _buildItem(TabItem.companies),
          _buildItem(TabItem.profile),
        ],
        onTap: (index) => onSelectTab(TabItem.values[index]),
      ),
      tabBuilder: (context, index){
        final item = TabItem.values[index];
        return CupertinoTabView(
          navigatorKey: navigatorKeys[item],
          builder: (context) => widgetBuilders[item](context),
        );
      },
    );
  }

  BottomNavigationBarItem _buildItem(TabItem tabItem) {
    final itemData = TabItemData.allTabs[tabItem];
    final color = currentTab == tabItem ? Colors.amber[800] : Colors.grey[300];
    return BottomNavigationBarItem(
      icon: Icon(
        itemData.icon,
        color: color,
        size: 35,
      ),
      title: BuildText(
        text: itemData.title,
        color: color,
        fontSize: 15,
        fontWeight: FontWeight.w600,
      )
    );
  }
}



class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  TabItem _currentTab = TabItem.home;

  final Map<TabItem, GlobalKey<NavigatorState>> navigatorKeys = {
    TabItem.home: GlobalKey<NavigatorState>(),
    TabItem.proposal: GlobalKey<NavigatorState>(),
    TabItem.companies: GlobalKey<NavigatorState>(),
    TabItem.profile: GlobalKey<NavigatorState>(),

  };
  _select(TabItem tabItem) {
    if(tabItem == _currentTab){
      navigatorKeys[tabItem].currentState.popUntil((route) => route.isFirst);
    } else {
      setState(() => _currentTab = tabItem);
    }
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => !await navigatorKeys[_currentTab].currentState.maybePop(),
      child: CupertinoHomeScaffold(
        currentTab: _currentTab,
        onSelectTab: _select,
        navigatorKeys: navigatorKeys,
      ),
    );
  }


}

