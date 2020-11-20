import 'package:flutter/material.dart';
import 'beranda.dart';

class NavBawah extends StatefulWidget {
  @override
  _NavBawah createState() => new _NavBawah();
}

class _NavBawah extends State<NavBawah> {
  int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [
    new Beranda(),
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: _container[_bottomNavCurrentIndex],
        bottomNavigationBar: _buildBottomNavigation()
    );
  }

  Widget _buildBottomNavigation() {
    return new BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        setState(() {
          _bottomNavCurrentIndex = index;
        });
      },
      currentIndex: _bottomNavCurrentIndex,
      items: [
        BottomNavigationBarItem(
          activeIcon: new Icon(
            Icons.home,
            color: Color(0xff3a653d),
          ),
          icon: new Icon(
            Icons.home,
            color: Colors.grey,
          ),
          title: new Text(
            'Beranda', style: TextStyle(color: Color(0xff3a653d))
          ),
        ),
        BottomNavigationBarItem(
          activeIcon: new Icon(
            Icons.notifications,
            color: Color(0xff3a653d),
          ),
          icon: new Icon(
            Icons.notifications,
            color: Colors.grey,
          ),
          title: new Text('Notifikasi'),
        ),
        BottomNavigationBarItem(
          activeIcon: new Icon(
            Icons.settings,
            color: Color(0xff3a653d),
          ),
          icon: new Icon(
            Icons.settings,
            color: Colors.grey,
          ),
          title: new Text('Pengaturan'),
        ),
        BottomNavigationBarItem(
          activeIcon: new Icon(
            Icons.person,
            color: Color(0xff3a653d),
          ),
          icon: new Icon(
            Icons.person,
            color: Colors.grey,
          ),
          title: new Text('Akun'),
        ),
      ],
    );
  }
}