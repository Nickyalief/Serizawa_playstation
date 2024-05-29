import 'package:flutter/material.dart';

class AccessoriesTabBar extends StatefulWidget {
  const AccessoriesTabBar({
    Key? key,
    required this.onTabChange,
    required this.startIndex,
    required this.tabItems,
  }) : super(key: key);

  final void Function(int) onTabChange;
  final int startIndex;
  final List<String> tabItems;

  @override
  _AccessoriesTabBarState createState() => _AccessoriesTabBarState();
}

class _AccessoriesTabBarState extends State<AccessoriesTabBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: widget.tabItems.length,
      vsync: this,
      initialIndex: widget.startIndex,
    );
    _tabController.addListener(_handleTabChange);
  }

  void _handleTabChange() {
    if (!_tabController.indexIsChanging) {
      widget.onTabChange(_tabController.index);
      setState(() {});
    }
  }

  @override
  void dispose() {
    _tabController.removeListener(_handleTabChange);
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: widget.startIndex,
      length: widget.tabItems.length,
      child: TabBar(
        controller: _tabController,
        indicatorSize: TabBarIndicatorSize.label,
        physics: BouncingScrollPhysics(),
        labelColor: Colors.blue,
        labelStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
              fontFamily: 'Kanit',
              fontSize: 17.5,
            ),
        unselectedLabelColor: Colors.black38,
        unselectedLabelStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
              fontFamily: 'Kanit',
              fontSize: 17.0,
            ),
        isScrollable: true,
        tabs: widget.tabItems.map((t) => Tab(text: t)).toList(),
      ),
    );
  }
}
