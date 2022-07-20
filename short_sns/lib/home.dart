import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

import 'package:short_sns/home.dart';
import 'package:short_sns/my_page.dart';
import 'package:short_sns/search.dart';
import 'package:short_sns/settings.dart';
import 'package:short_sns/write.dart';
import 'package:short_sns/theme.dart';
import 'package:short_sns/components/app_widgets/tap_fade_icon.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);


  // @override
  // Widget build(BuildContext context) {
  //   return const Center(
  //     child: Text(
  //       'home',
  //       style: TextStyle(fontSize: 30),
  //     ),
  //   );
  // }
  // static const List<Widget> _homePages =<Widget>[
  //   _KeepAlivePage(child: TimelinePage()),
  //   _KeepAlivePage(child: SearchPage()),
  //   _KeepAlivePage(child: ProfilePage())
  // ];

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    // final iconColor = Theme.of(context).appBarTheme.iconTheme!.color!;
    // print(iconColor);
    return Scaffold(
      appBar: AppBar(
        title:
            Text('TBOL', style: GoogleFonts.grandHotel(fontSize: 32)),
        elevation: 0,
        centerTitle: false,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: TapFadeIcon(
              onTap: () => Navigator.of(context).push(Write.route),
              // onTap: () => Navigator.push(context,Write()),
              icon: Icons.add_circle_outline,
              // iconColor: iconColor,
            )
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TapFadeIcon(
              // onTap: () async {
              //   context.removeAndShowSnackbar('Not part of the demo');
              // },
              onTap: () => Navigator.of(context).push(Write.route),
              icon: Icons.favorite_outline,
              // iconColor: iconColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TapFadeIcon(
              // onTap: () =>
              //     context.removeAndShowSnackbar('Not part of the demo'),
              onTap: () => Navigator.of(context).push(Write.route),
              icon: Icons.call_made,
              // iconColor: iconColor,
            ),
          ),
        ],
      ),
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        // children: Home._homePages,
      ),
    );
  }
}

class _BottomNavBar extends StatefulWidget {
  const _BottomNavBar({
    Key? key,
    required this.pageController,
  }) : super(key:key);

  final PageController pageController;

  @override
  State<_BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<_BottomNavBar> {
  void _onNavigationItemTapped(int index) {
    widget.pageController.jumpToPage(index);
  }

  @override
  void initState() {
    super.initState();
    widget.pageController.addListener(() {
      setState((){});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: (Theme.of(context).brightness == Brightness.dark)
                ? AppColors.lightGrey.withOpacity(0.5)
                : AppColors.faded.withOpacity(0.5),
            blurRadius: 1,
          ),
        ],
      ),
      child: BottomNavigationBar(
        onTap: _onNavigationItemTapped,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        iconSize: 28,
        currentIndex: widget.pageController.page?.toInt() ?? 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
            activeIcon: Icon(Icons.search, size: 22,),
            label: 'Search'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            label: 'Person',
          )
        ],
      ),
    );
  }
}

// class _KeepAlivePage extends StatefulWidget {
//   const _KeepAlivePage({
//     Key? key,
//     required this.child,
//   }) : super(key: key);

//   final Widget child;

//   @override
//   _KeepAlivePageState createState() => _KeepAlivePageState();
// }

// class _KeepAlivePageState extends State<_KeepAlivePage> with AutomaticKeepAliveClientMixin {
//   @override
//   Widget build(BuildContext context) {
//     super.build(context);

//     return widget.child;
//   }

//   @override
//   bool get wantKeepAlive => true;
// }