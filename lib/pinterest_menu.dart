// pinterest_menu.dart

import 'package:flutter/material.dart';
import 'login_screen.dart';

class PinterestMenu extends StatefulWidget {
  @override
  _PinterestMenuState createState() => _PinterestMenuState();
}

class _PinterestMenuState extends State<PinterestMenu> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pinterest Menu'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Pinterest Menu'),
              background: Image.network(
                'https://your-background-image-url.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
              childAspectRatio: 0.75,
            ),
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return _buildGridItem(context, index);
              },
              childCount: 10,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        selectedItemColor: Colors.black, // Warna ikon terpilih
        unselectedItemColor: Colors.black54, // Warna ikon tidak terpilih
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
      ),
    );
  }

  Widget _buildGridItem(BuildContext context, int index) {
    return GestureDetector(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Tapped item $index'),
          ),
        );
      },
      child: Container(
        color: Colors.blue,
        child: Center(
          child: Text('Item $index'),
        ),
      ),
    );
  }

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });

    // Handle navigation based on the selected tab
    switch (index) {
      case 0:
      // Handle home tab
        break;
      case 1:
      // Handle search tab
        break;
      case 2:
      // Handle inbox tab
        break;
      case 3:
      // Handle account tab
      // Navigasi ke halaman login jika belum masuk
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),
        );
        break;
    }
  }
}
