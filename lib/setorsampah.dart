import 'package:flutter/material.dart';


class SetorSampah extends StatefulWidget {
  @override
  _SetorSampah createState() => _SetorSampah();
}

class _SetorSampah extends State<SetorSampah> {

  String _valUang;
  String _valSampah;

  List _listUang = ["Tunai", "Transfer"];
  List _listSampah = ["Plastik", "Kertas", "Benda Tajam", "Sandal"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff84c263),
          title: Text("Setor Sampah"),
        ),
        body: Container(
          child: Stack(alignment: Alignment.bottomCenter,
            children: <Widget>[
              Container(
//                height: MediaQuery.of(context).size.height,
//                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(top: 20, bottom: 15),
                    ),
                    Text(
                      "Silahkan isi form di bawah ini :",
                      style: TextStyle(
                          color: Color(0xff3a653d),
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 120, bottom: 0, left: 0, right: 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    new Text("Pembayaran", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)) ,
                    DropdownButton(
                      hint: Text('Pilih Pembayaran'),
                      value: _valUang,
                      items: _listUang.map((value) {
                        return DropdownMenuItem(
                          child: Text(value),
                          value: value,
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          _valUang = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
              Container(
                  height: MediaQuery.of(context).size.height * 0.8,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Stack(alignment: Alignment.bottomCenter,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          SizedBox(height: 100,),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 35, right: 10, bottom: 10, left: 10),
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.07,
                              width: MediaQuery.of(context).size.width - 40,
                              child: Material(
                                elevation: 5,
                                color: Color(0xffe0edc5),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                    topLeft: Radius.circular(20),
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 20, right: 20, top: 10, bottom: 10),
                                  child: TextField(
                                    keyboardType: TextInputType.datetime,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Tanggal",
                                      hintStyle: TextStyle(
                                          color: Color(0xff222222), fontSize: 14),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 40, bottom: 0, left: 0, right: 0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                new Text("Jenis Sampah", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)) ,
                                DropdownButton(
                                  hint: Text('Jenis Sampah'),
                                  value: _valSampah,
                                  items: _listSampah.map((value) {
                                    return DropdownMenuItem(
                                      child: Text(value),
                                      value: value,
                                    );
                                  }).toList(),
                                  onChanged: (value) {
                                    setState(() {
                                      _valSampah = value;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 40, right: 10, bottom: 10, left: 10),
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.07,
                              width: MediaQuery.of(context).size.width - 40,
                              child: Material(
                                elevation: 5,
                                color: Color(0xffe0edc5),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                    topLeft: Radius.circular(20),
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 20, right: 20, top: 10, bottom: 10),
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Berat(Kg)",
                                      hintStyle: TextStyle(
                                          color: Color(0xff222222), fontSize: 14),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          new Container(
                              padding: EdgeInsets.only(top: 70),
                              child: RaisedButton(
                                  shape: new RoundedRectangleBorder(
                                    borderRadius: new BorderRadius.circular(30),
                                  ),
                                  color: Color(0xff3a653d),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 50, vertical: 15),
                                  child: Text(
                                    'SETOR',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  onPressed: () {}
                              )
                          ),
                        ],
                      )
                    ],
                  ))],
          ),

        ),
      ),
    );
  }
  }

