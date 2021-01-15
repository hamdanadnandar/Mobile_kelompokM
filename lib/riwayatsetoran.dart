import 'package:flutter/material.dart';

class Riwayat extends StatefulWidget {
  @override
  _SetorSampah createState() => _SetorSampah();
}

class _SetorSampah extends State<Riwayat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff84c263),
          title: Text("Riwayat Setoran"),
        ),
        body: Container(
          child:
            Stack(alignment: Alignment.bottomCenter, children: <Widget>[
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(
                        top: 1, bottom: 0, left: 0, right: 0),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.8,
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              SizedBox(
                                height: 1,
                              ),
                              Container(
                                  margin: const EdgeInsets.only(
                                      top: 40,
                                      bottom: 0,
                                      left: 0,
                                      right: 0),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                            vertical: 20, horizontal: 30),
                                        padding: EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 15),
                                        decoration: BoxDecoration(
                                            color: Colors.blue.shade100,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        height: 100,
                                        width: double.infinity,
                                        child: Column(
                                          children: [
                                            // show Nama Toko

                                            Container(),
                                            Column(
                                              children: [
                                                Divider(),
                                                FutureBuilder(
                                                  initialData: '...',
                                                  builder: (BuildContext
                                                          context,
                                                      AsyncSnapshot<String>
                                                          snapshot) {
                                                    return Text(
                                                      snapshot.hasData
                                                          ? snapshot.data
                                                          : 'Nama Toko',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 24,
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ],
                                            ),
                                            // show list hasil inputan

                                            Container(),
                                            ListView.builder(
                                              shrinkWrap: true,
                                              physics:
                                                  NeverScrollableScrollPhysics(),
                                              itemBuilder:
                                                  (BuildContext context,
                                                      int index) {
                                                return Padding(
                                                  padding:
                                                      EdgeInsets.symmetric(
                                                          vertical: 5,
                                                          horizontal: 8),
                                                  child: Row(
                                                    children: [
                                                      Text('2kg'),
                                                      Text(
                                                          "sampah rumah tangga"),
                                                      SizedBox(width: 15),
                                                      Spacer(),
                                                      Text('Rp.1000')
                                                    ],
                                                  ),
                                                );
                                              },
                                            ),
                                            // show Total

                                            Container(),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 8,
                                                  horizontal: 10),
                                              child: Text(
                                                'Total : 1000',
                                                style:
                                                    TextStyle(fontSize: 20),
                                                textAlign: TextAlign.end,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ))
                            ],
                          )
                        ]),
                  )
                ],
              ),
            ),
          ]),
        ));
  }
}
