import 'package:flutter/material.dart';
import 'package:splashscreen/utilities/categories.dart';
import 'package:splashscreen/utilities/first_page.dart';
import 'package:splashscreen/utilities/home.dart';
import 'package:splashscreen/utilities/search.dart';
import 'package:splashscreen/utilities/settings.dart';

import 'utilities/fourth_page.dart';
import 'utilities/second_page.dart';
import 'utilities/third_page.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const Home(),
    const Search(),
    const Settings(),
    const Categories()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ARIK'),
        backgroundColor: Colors.purple[400],
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.account_circle)),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.store),
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.purple[200],
          child: ListView(
            children: [
              const DrawerHeader(
                  child: Center(
                child: Text(
                  'ChicPea',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              )),
              ListTile(
                leading: const Icon(Icons.spa),
                title: const Text(
                  'Lavender',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const FirstPage()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.agriculture),
                title: const Text(
                  'Grey House',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SecondPage()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.liquor),
                title: const Text(
                  'White Wine',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ThirdPage()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.emoji_nature),
                title: const Text(
                  'Yellow Pine',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const FourthPage()));
                },
              )
            ],
          ),
        ),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.category),
              //backgroundColor: Colors.purple,
              label: 'Categories'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}
