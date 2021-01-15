import 'package:filterin/navbar.dart';
import 'package:filterin/setorsampah.dart';
import 'package:flutter/material.dart';
import 'package:filterin/appbar.dart';

class Notifikasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new SafeArea(
        child: new Scaffold(
            appBar: new FilterAppBar(),
            body: Container(
                child:
                    new ListView(physics: ClampingScrollPhysics(), children: <
                        Widget>[
              new Container(
                  padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 25.0),
                  color: Colors.white,
                  child: new Column(
                    children: <Widget>[
                      _buildSaldo(),
                    ],
                  )),
              new Container(
                padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 30.0),
                height: 100.0,
                child: RaisedButton.icon(
                  textColor: Colors.white,
                  color: Color(0xff84c263),
                  onPressed: () {},
                  icon: Image.asset(
                    "asset/tipstrick.png",
                    height: 35,
                    width: 35,
                  ),
                  label: Text(
                    "Tips & Trik Pengolahan Sampah",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
              new Container(
                padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 30.0),
                height: 100.0,
                child: RaisedButton.icon(
                  textColor: Colors.white,
                  color: Color(0xff84c263),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SetorSampah()));
                  },
                  icon: Image.asset(
                    "asset/setorsampah.png",
                    height: 35,
                    width: 35,
                  ),
                  label: Text(
                    "Setor Sampah",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
              new Container(
                padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 30.0),
                height: 100.0,
                child: RaisedButton.icon(
                  textColor: Colors.white,
                  color: Color(0xff84c263),
                  onPressed: () {},
                  icon: Image.asset(
                    "asset/riwayat.png",
                    height: 35,
                    width: 35,
                  ),
                  label: Text(
                    "Riwayat Setoran",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
              new Container(
                  color: Colors.white,
                  margin: EdgeInsets.only(top: 16.0),
                  child: new Column(
                    children: <Widget>[
//                        _buildGoFoodFeatured(),
                      _buildInfo()
                    ],
                  )),
            ]))));
  }
}

Widget _buildSaldo() {
  return new Container(
      height: 120.0,
      decoration: new BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [const Color(0xffE0EDC5), const Color(0xffE0EDC5)],
          ),
          borderRadius: new BorderRadius.all(new Radius.circular(3.0))),
      child: new Column(
        children: <Widget>[
          new Container(
            padding: EdgeInsets.all(12.0),
            decoration: new BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [const Color(0xff84c263), const Color(0xff84c263)],
                ),
                borderRadius: new BorderRadius.only(
                    topLeft: new Radius.circular(3.0),
                    topRight: new Radius.circular(3.0))),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(
                  "Saldo",
                  style: new TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                      fontFamily: "NeoSansBold"),
                ),
                new Container(
                  child: new Text(
                    "Rp. 120.000",
                    style: new TextStyle(
                        fontSize: 14.0,
                        color: Colors.black,
                        fontFamily: "NeoSansBold"),
                  ),
                )
              ],
            ),
          ),
          new Container(
            padding: EdgeInsets.only(left: 32.0, right: 32.0, top: 12.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
//                    new Image.asset(
//                      "assets/icons/icon_transfer.png",
//                      width: 32.0,
//                      height: 32.0,
//                    ),
                    new Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    new Text(
                      "Tarik",
                      style: TextStyle(color: Colors.black, fontSize: 12.0),
                    )
                  ],
                ),
                new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
//                    new Image.asset(
////                      "assets/icons/icon_scan.png",
////                      width: 32.0,
////                      height: 32.0,
////                    ),
                    new Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    new Text(
                      "Poin",
                      style: TextStyle(color: Colors.black, fontSize: 12.0),
                    )
                  ],
                ),
                new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Image.asset(
                      "asset/setorsampah.png",
                      width: 32.0,
                      height: 32.0,
                    ),
                    new Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    new Text(
                      "Kg",
                      style: TextStyle(color: Colors.black, fontSize: 12.0),
                    )
                  ],
                ),
//                new Column(
//                  mainAxisAlignment: MainAxisAlignment.center,
//                  children: <Widget>[
//                    new Image.asset(
//                      "asset/riwayat.png",
//                      width: 32.0,
//                      height: 32.0,
//                    ),
//                    new Padding(
//                      padding: EdgeInsets.only(top: 10.0),
//                    ),
//                    new Text(
//                      "Riwayat",
//                      style: TextStyle(color: Colors.black, fontSize: 12.0),
//                    )
//                  ],
//                ),
              ],
            ),
          )
        ],
      ));
}

//Widget _buildGoFoodFeatured() {
//  return new Container(
//    padding: EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 16.0),
//    child: new Column(
//      crossAxisAlignment: CrossAxisAlignment.stretch,
//      children: <Widget>[
//        new Text(
//          "GO-FOOD",
//          style: new TextStyle(fontFamily: "NeoSansBold"),
//        ),
//        new Padding(
//          padding: EdgeInsets.only(top: 8.0),
//        ),
//        new Text(
//          "Pilihan Terlaris",
//          style: new TextStyle(fontFamily: "NeoSansBold"),
//        ),
//        new SizedBox(
//          height: 172.0,
//          child: FutureBuilder<List>(
//              future: fetchFood(),
//              builder: (context, snapshot) {
//                if (snapshot.hasData) {
//                  return new ListView.builder(
//                    itemCount: snapshot.data.length,
//                    padding: EdgeInsets.only(top: 12.0),
//                    physics: new ClampingScrollPhysics(),
//                    scrollDirection: Axis.horizontal,
//                    itemBuilder: (context, index) {
//                      return _rowGoFoodFeatured(snapshot.data[index]);
//                    },
//                  );
//                }
//                return Center(
//                  child: SizedBox(
//                      width: 40.0,
//                      height: 40.0,
//                      child: const CircularProgressIndicator()),
//                );
//              }),
//        ),
//      ],
//    ),
//  );
//}

//Widget _rowGoFoodFeatured(Food food) {
//  return new Container(
//    margin: EdgeInsets.only(right: 16.0),
//    child: new Column(
//      children: <Widget>[
//        new ClipRRect(
//          borderRadius: new BorderRadius.circular(8.0),
//          child: new Image.asset(
//            food.image,
//            width: 132.0,
//            height: 132.0,
//          ),
//        ),
//        new Padding(
//          padding: EdgeInsets.only(top: 8.0),
//        ),
////        new Text(
////          food.title,
////        ),
//      ],
//    ),
//  );
//}

Widget _buildInfo() {
  return new Container(
      margin: EdgeInsets.all(16.0),
      child: FutureBuilder(
        future: fetchInfo(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return new Column(
                children: snapshot.data.map<Widget>((data) {
              return _rowInfo(data);
            }).toList());
          }
          return Center(
            child: SizedBox(
                width: 40.0,
                height: 40.0,
                child: const CircularProgressIndicator()),
          );
        },
      ));
}

Widget _rowInfo(Info info) {
  return new Container(
    height: 320.0,
    child: new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Container(
          margin: EdgeInsets.only(bottom: 16.0),
          width: double.infinity,
          height: 1.0,
          color: Colors.grey,
        ),
        new ClipRRect(
          borderRadius: new BorderRadius.circular(8.0),
          child: new Image.asset(
            info.image,
            height: 172.0,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        new Padding(
          padding: EdgeInsets.only(top: 16.0),
        ),
        new Text(
          info.title,
          style: new TextStyle(fontFamily: "NeoSansBold", fontSize: 16.0),
        ),
        new Padding(
          padding: EdgeInsets.only(top: 8.0),
        ),
        new Text(
          info.content,
          maxLines: 2,
          softWrap: true,
          style: new TextStyle(color: Colors.grey, fontSize: 14.0),
        ),
        new Padding(
          padding: EdgeInsets.only(top: 6.0),
        ),
        new Container(
          alignment: Alignment.centerRight,
          child: new MaterialButton(
            color: Color(0xff84c263),
            onPressed: () {},
            child: new Text(
              info.button,
              style: new TextStyle(
                  color: Colors.white,
                  fontFamily: "NeoSansBold",
                  fontSize: 12.0),
            ),
          ),
        )
      ],
    ),
  );
}

//Future<List<Food>> fetchFood() async {
//  List<Food> _goFoodFeaturedList = [];
//  _goFoodFeaturedList
//      .add(new Food(title: "Steak Andakar", image: "asset/images/food_1.jpg"));
//  _goFoodFeaturedList.add(
//      new Food(title: "Mie Ayam Tumini", image: "asset/images/food_2.jpg"));
//  _goFoodFeaturedList.add(
//      new Food(title: "Tengkleng Hohah", image: "asset/images/food_3.jpg"));
//  _goFoodFeaturedList
//      .add(new Food(title: "Warung Steak", image: "asset/images/food_4.jpg"));
//  _goFoodFeaturedList.add(new Food(
//      title: "Kindai Warung Banjar", image: "asset/images/food_5.jpg"));
//
//  return new Future.delayed(new Duration(seconds: 1), () {
//    return _goFoodFeaturedList;
//  });
//}

Future<List<Info>> fetchInfo() async {
  List<Info> _infoList = [];

  _infoList.add(new Info(
      image: "asset/images/berita1.jpg",
      title: "BERITA 1",
      content:
          "Warga sedang mendaur ulang sampah plastik menjadi tas yang lebih berguna.",
      button: "SELENGKAPNYA"));
  _infoList.add(new Info(
      image: "asset/images/berita2.jpg",
      title: "BERITA 2",
      content:
          "Sampah botol bekas dapat menjadi berbagai macam kerajinan tangan.",
      button: "SELENGKAPNYA"));
  _infoList.add(new Info(
      image: "asset/images/berita3.jpg",
      title: "BERITA 3",
      content:
          "Sampah plastik berjenis botol terbukti sampah terbanyak yang dihasilkan oleh manusia.",
      button: "SELENGKAPNYA"));
  _infoList.add(new Info(
      image: "asset/images/berita4.jpg",
      title: "BERITA 4",
      content:
          "Begini caranya mendaur ulang sampah plastik dari botol bekas minummu!",
      button: "SELENGKAPNYA"));
  return new Future.delayed(new Duration(seconds: 3), () {
    return _infoList;
  });
}

//class Food {
//  String title;
//  String image;
//
//  Food({this.title, this.image});
//}

class Info {
  String image;
  String title;
  String content;
  String button;

  Info({this.image, this.title, this.content, this.button});
}
