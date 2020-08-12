import 'package:flutter/material.dart';
import 'package:social_media_app/data.dart';
import 'package:social_media_app/widgets/custom_drawer.dart';
import 'package:social_media_app/widgets/following_view.dart';
import 'package:social_media_app/widgets/post_carousel.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  PageController _pageController;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    _pageController = PageController(viewportFraction: 0.8, initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'ENVIRONMENT',
          style: TextStyle(
              fontWeight: FontWeight.w600,
              letterSpacing: 5,
              fontSize: 18,
              color: Theme.of(context).primaryColor),
        ),
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Theme.of(context).primaryColor,
          indicatorWeight: 5,
          labelStyle: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
          unselectedLabelStyle: TextStyle(fontSize: 18),
          tabs: <Widget>[
            Tab(text: 'Trending'),
            Tab(text: 'Latest'),
          ],
        ),
      ),
      drawer: CustomDrawer(),
      body: ListView(
        children: [
          Following(),
          PostCarousel(
            title: 'Posts',
            posts: posts,
            pageController: _pageController,
          )
        ],
      ),
    );
  }
}
