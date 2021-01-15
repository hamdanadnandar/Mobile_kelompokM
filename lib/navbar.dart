// import 'package:flutter/material.dart';
// import 'beranda.dart';
// import 'notifikasi.dart';

// class NavBawah extends StatefulWidget {
//   @override
//   _NavBawah createState() => new _NavBawah();
// }

// class _NavBawah extends State<NavBawah> {
//   int _bottomNavCurrentIndex = 0;
//   List<Widget> _container = [
//     Beranda(),
//     Beranda(),
//     Beranda(),
//     Beranda(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//         body: _container[_bottomNavCurrentIndex],
//         bottomNavigationBar: _buildBottomNavigation());
//   }

//   Widget _buildBottomNavigation() {
//     return new BottomNavigationBar(
//       type: BottomNavigationBarType.fixed,
//       onTap: (index) {
//         setState(() {
//           _bottomNavCurrentIndex = index;
//         });
//       },
//       currentIndex: _bottomNavCurrentIndex,
//       items: [
//         BottomNavigationBarItem(
//           activeIcon: new Icon(
//             Icons.home,
//             color: Color(0xff3a653d),
//           ),
//           icon: new Icon(
//             Icons.home,
//             color: Colors.grey,
//           ),
//           title:
//               new Text('Beranda', style: TextStyle(color: Color(0xff3a653d))),
//         ),
//         BottomNavigationBarItem(
//           activeIcon: new Icon(
//             Icons.notifications,
//             color: Color(0xff3a653d),
//           ),
//           icon: new Icon(
//             Icons.notifications,
//             color: Colors.grey,
//           ),
//           title: new Text('Notifikasi'),
//         ),
//         BottomNavigationBarItem(
//           activeIcon: new Icon(
//             Icons.settings,
//             color: Color(0xff3a653d),
//           ),
//           icon: new Icon(
//             Icons.settings,
//             color: Colors.grey,
//           ),
//           title: new Text('Pengaturan'),
//         ),
//         BottomNavigationBarItem(
//           activeIcon: new Icon(
//             Icons.person,
//             color: Color(0xff3a653d),
//           ),
//           icon: new Icon(
//             Icons.person,
//             color: Colors.grey,
//           ),
//           // ignore: deprecated_member_use
//           title: new Text('Akun'),
//         ),
//       ],
//     );
//   }
// }




import 'package:filterin/beranda.dart';
import 'package:filterin/route.dart';
import 'package:flutter/material.dart';

class NavBawah extends StatefulWidget {
  final int i;
  NavBawah({this.i=0});
  @override
  NavBawahState createState() => NavBawahState();
}

class NavBawahState extends State<NavBawah> {
  final listPage = <StatefulWidget>[
    Beranda(),
    Beranda(),
    Beranda(),
    Beranda(),
  ];
  // int selectedIndex = widget.i;
  void _NavBawahTapped(int index) {
    if(widget.i != index){
      Routes.changePage(context, listPage[index]);
    }
  }

  @override
  Widget build(BuildContext context) {
    final _bottomNavBawahItem = <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(Icons.home), label: "Beranda"),
      BottomNavigationBarItem(
          icon: Icon(Icons.notifications), label: "Notifikasi"),
      BottomNavigationBarItem(
          icon: Icon(Icons.settings), label: "Pengaturan"),
      BottomNavigationBarItem(
          icon: Icon(Icons.person), label: "Akun"),
    ];
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: _bottomNavBawahItem,
      // backgroundColor: HexColor('ffffff'),
      currentIndex: widget.i,
      selectedItemColor: Color(0xff3a653d),
      // selectedLabelStyle: GoogleFonts.varela(color: Colors.deepOrange, fontSize: 11, fontWeight: FontWeight.w600),
      // unselectedLabelStyle: GoogleFonts.varela(fontSize: 10),
      unselectedItemColor: Colors.grey,
      onTap: _NavBawahTapped,
    );
  }
}

//Color(0xff3a653d)
// Colors.grey