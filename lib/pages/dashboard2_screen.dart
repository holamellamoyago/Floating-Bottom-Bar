import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bnb/custom/floatingActionButton_custom.dart';
import 'package:flutter_bnb/pages/screen1_screen.dart';
import 'package:flutter_bnb/pages/screen2_screen.dart';
import 'package:flutter_floating_bottom_bar/flutter_floating_bottom_bar.dart';

class DashBoard2 extends StatefulWidget {
  static const routename = 'DashBoard2_screen';
  const DashBoard2({Key? key}) : super(key: key);

  @override
  _DashBoard2State createState() => _DashBoard2State();
}

class _DashBoard2State extends State<DashBoard2>
    with SingleTickerProviderStateMixin {
  late int currentPage;
  late TabController tabController;
  final List<Color> colors = [
    Colors.yellow,
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.pink
  ];

  @override
  void initState() {
    currentPage = 0;
    tabController = TabController(length: 2, vsync: this);
    tabController.animation!.addListener(
      () {
        final value = tabController.animation!.value.round();
        if (value != currentPage && mounted) {
          changePage(value);
        }
      },
    );
    super.initState();
  }

  void changePage(int newPage) {
    setState(() {
      currentPage = newPage;
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Color unselectedColor = colors[currentPage].computeLuminance() < 0.5
        ? Colors.black
        : Colors.white;
    return SafeArea(
      child: Scaffold(
        body: BottomBar(
          fit: StackFit.expand,
          icon: (width, height) => Center(
            child: IconButton(
              padding: EdgeInsets.zero,
              onPressed: null,
              icon: Icon(
                Icons.arrow_upward_rounded,
                color: unselectedColor,
                size: width,
              ),
            ),
          ),
          borderRadius: BorderRadius.circular(500),
          duration: Duration(seconds: 1),
          curve: Curves.decelerate,
          showIcon: true,
          width: MediaQuery.of(context).size.width * 0.8,
          barColor: colors[currentPage].computeLuminance() > 0.5
              ? Colors.black
              : Colors.white,
          start: 2,
          end: 0,
          offset: 10,
          barAlignment: Alignment.bottomCenter,
          iconHeight: 35,
          iconWidth: 35,
          reverse: true,
          hideOnScroll: true,
          scrollOpposite: false,
          onBottomBarHidden: () {},
          onBottomBarShown: () {},
          body: (context, controller) => TabBarView(
              controller: tabController,
              dragStartBehavior: DragStartBehavior.down,
              physics: const BouncingScrollPhysics(),
              children: const [Screen1(), Screen2()]),
          child: TabBar(
            indicatorPadding: const EdgeInsets.fromLTRB(6, 0, 6, 0),
            controller: tabController,
            indicator: UnderlineTabIndicator(
                borderSide: BorderSide(
                    color: currentPage == 0 ? colors[0] : unselectedColor,
                    width: 4),
                insets: EdgeInsets.fromLTRB(16, 0, 16, 8)),
            tabs: [
              SizedBox(
                height: 55,
                width: 40,
                child: Center(
                    child: Icon(
                  Icons.home,
                  color: currentPage == 0 ? colors[0] : unselectedColor,
                )),
              ),
              SizedBox(
                height: 55,
                width: 40,
                child: Center(
                    child: Icon(
                  Icons.search,
                  color: currentPage == 1 ? colors[1] : unselectedColor,
                )),
              ),
              
            ],
          ),
          
        ),
        
      ),
    );
  }
}
