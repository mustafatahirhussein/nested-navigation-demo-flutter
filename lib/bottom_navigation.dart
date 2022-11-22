import 'package:flutter/material.dart';
import 'package:nested_navigation_demo_flutter/tab_item.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation(
      {super.key, required this.currentTab, required this.onSelectTab});
  final int currentTab;
  final ValueChanged<int> onSelectTab;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        _buildItem(0),
        _buildItem(1),
        _buildItem(2),
      ],
      onTap: (index) => onSelectTab(
        index
      ),
      currentIndex: currentTab,
      selectedItemColor: Colors.purple,
    );
  }

  BottomNavigationBarItem _buildItem(int tabItem) {
    return BottomNavigationBarItem(
      icon: Icon(
        Icons.layers,
        color: _colorTabMatching(tabItem),
      ),
      label: 'label $tabItem',
    );
  }

  Color _colorTabMatching(int item) {
    return currentTab == item ? Colors.blue : Colors.grey;
  }
}
