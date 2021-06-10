import 'package:flutter/material.dart';
import 'bottom_bar.dart';
import 'cookie_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        elevation: 0.0,
        // centerTitle: true,
        title: Container(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.yellow,
                      child: CircleAvatar(
                        radius: 37,
                        backgroundImage: AssetImage('assets/male.png'),
                        backgroundColor: Colors.yellow,
                      ),
                    ),
                    Positioned(
                      top: 62,
                      right: 0,
                      // bottom: radius,
                      left: 60,
                      child: CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.add,
                          color: Colors.grey,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.yellow,
                  child: CircleAvatar(
                    radius: 37,
                    backgroundImage: AssetImage('assets/male.png'),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.yellow,
                  child: CircleAvatar(
                    radius: 37,
                    backgroundImage: AssetImage('assets/male.png'),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.yellow,
                  child: CircleAvatar(
                    radius: 37,
                    backgroundImage: AssetImage('assets/female.png'),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.yellow,
                  child: CircleAvatar(
                    radius: 37,
                    backgroundImage: AssetImage('assets/male.png'),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.yellow,
                  child: CircleAvatar(
                    radius: 37,
                    backgroundImage: AssetImage('assets/male.png'),
                  ),
                ),
              ],
            )),
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 20.0),
        children: <Widget>[
          SizedBox(height: 15.0),
          Text('Categories',
              style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold)),
          SizedBox(height: 1.0),
          TabBar(
              controller: _tabController,
              indicatorColor: Colors.transparent,
              labelColor: Colors.white,
              isScrollable: true,
              labelPadding: EdgeInsets.all(10),
              unselectedLabelColor: Colors.white,
              tabs: [
                ElevatedButton(
                  child: Text('All',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Varela',
                        fontSize: 20.0,
                      )),
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(12),
                      primary: Colors.yellow,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0))),
                  onPressed: () {},
                ),
                ElevatedButton(
                  child: Text(
                    'Vegan',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Varela',
                      fontSize: 20.0,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(12),
                      primary: Colors.grey[300],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0))),
                  onPressed: () {},
                ),
                ElevatedButton(
                  child: Text('Keto',
                      style: TextStyle(
                        //backgroundColor: Colors.yellow,
                        color: Colors.black,
                        fontFamily: 'Varela',
                        fontSize: 20.0,
                      )),
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(12),
                      primary: Colors.grey[300],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0))),
                  onPressed: () {},
                ),
                ElevatedButton(
                  child: Text('Vegan',
                      style: TextStyle(
                        //backgroundColor: Colors.yellow,
                        color: Colors.black,
                        fontFamily: 'Varela',
                        fontSize: 20.0,
                      )),
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(12),
                      primary: Colors.grey[300],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0))),
                  onPressed: () {},
                ),
              ]),
          Container(
              height: MediaQuery.of(context).size.height - 50.0,
              width: double.infinity,
              child: TabBarView(controller: _tabController, children: [
                CookiePage(),
                CookiePage(),
                CookiePage(),
                CookiePage(),
              ]))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.yellow,
        foregroundColor: Colors.grey,
        child: Icon(
          Icons.search,
          size: 28,
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.yellow,
              ),
              title: Text('Home'),
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.post_add_sharp,
                color: Colors.grey,
              ),
              title: Text('Post'),
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
                color: Colors.grey,
              ),
              title: Text('Notifications'),
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.grey,
              ),
              title: Text('Profile'),
              backgroundColor: Colors.white,
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          iconSize: 25,
          onTap: _onItemTapped,
          elevation: 5),
    );
  }
}
