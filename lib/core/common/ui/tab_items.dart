
import 'package:flutter/material.dart';

enum TabItem {home, proposal, companies, profile}

class TabItemData{
  final String title;
  final IconData icon;
  const TabItemData({@required this.title, @required this.icon});

  static const Map<TabItem, TabItemData> allTabs = {
    TabItem.home: TabItemData(title: 'Home', icon: Icons.home),
    TabItem.proposal: TabItemData(title: 'Proposal', icon: Icons.assessment_rounded),
    TabItem.companies: TabItemData(title: 'Companies', icon: Icons.account_balance_sharp),
    TabItem.profile: TabItemData(title: 'Companies', icon: Icons.person),

  };
}
