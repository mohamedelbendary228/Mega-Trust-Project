import 'package:auth/features/home/presentation/pages/home_page.dart';
import 'package:auth/utilities/colors/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'core/common/ui/build_custom_widget_for_text.dart';
import 'features/companies/presentation/pages/companies_page.dart';
import 'features/profile/presentation/pages/profile_page.dart';
import 'features/proposal/presentation/pages/proposal_page.dart';

enum TabItem { home, proposal, companies, profile }

class TabItemData {
  final String title;
  final String icon;

  const TabItemData({@required this.title, @required this.icon});

  static const Map<TabItem, TabItemData> allTabs = {
    TabItem.home: TabItemData(title: 'Home', icon: 'assets/images/home.png'),
    TabItem.proposal:
        TabItemData(title: 'Proposal', icon: 'assets/images/proposal.png'),
    TabItem.companies:
        TabItemData(title: 'Companies', icon: 'assets/images/compaines.png'),
    TabItem.profile:
        TabItemData(title: 'Profile', icon: 'assets/images/profile.png'),
  };
}

class CupertinoHomeScaffold extends StatelessWidget {
  final TabItem currentTab;
  final ValueChanged<TabItem> onSelectTab;
  final Map<TabItem, GlobalKey<NavigatorState>> navigatorKeys;

  CupertinoHomeScaffold({
    @required this.currentTab,
    @required this.onSelectTab,
    @required this.navigatorKeys,
  });

  Map<TabItem, WidgetBuilder> get widgetBuilders {
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
          _buildItem(TabItem.home, context),
          _buildItem(TabItem.proposal, context),
          _buildItem(TabItem.companies, context),
          _buildItem(TabItem.profile, context),
        ],
        onTap: (index) => onSelectTab(TabItem.values[index]),
      ),
      tabBuilder: (context, index) {
        final item = TabItem.values[index];
        return CupertinoTabView(
          navigatorKey: navigatorKeys[item],
          builder: (context) => widgetBuilders[item](context),
        );
      },
    );
  }

  BottomNavigationBarItem _buildItem(TabItem tabItem, BuildContext context) {
    final itemData = TabItemData.allTabs[tabItem];
    final color =
        currentTab == tabItem ? Theme.of(context).primaryColor : mainTextsColor;
    return BottomNavigationBarItem(
        icon: Image.asset(
          itemData.icon,
          color: color,
        ),
        title: BuildCustomWidgetForTexts(
          text: itemData.title,
          color: color,
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ));
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
    if (tabItem == _currentTab) {
      navigatorKeys[tabItem].currentState.popUntil((route) => route.isFirst);
    } else {
      setState(() => _currentTab = tabItem);
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async =>
          !await navigatorKeys[_currentTab].currentState.maybePop(),
      child: CupertinoHomeScaffold(
        currentTab: _currentTab,
        onSelectTab: _select,
        navigatorKeys: navigatorKeys,
      ),
    );
  }
}
