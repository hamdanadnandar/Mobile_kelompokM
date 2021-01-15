import 'package:filterin/components/alerts.dart';
import 'package:filterin/helper/setor-controller.dart';
import 'package:flutter/material.dart';

class SetorSampah extends StatefulWidget {
  @override
  _SetorSampah createState() => _SetorSampah();
}

class _SetorSampah extends State<SetorSampah> {
  DateTime pickedDate;
  String _valUang;
  String _valSampah;
  TextEditingController berat = new TextEditingController();
  List _listUang = ["Tunai", "Transfer"];
  List _listSampah = ["Daun", "Sayuran dan buah", "sisa makanan", "kayu"];

  _pickDate() async {
   DateTime date = await showDatePicker(
      context: context,
      firstDate: DateTime(DateTime.now().year-5),
      lastDate: DateTime(DateTime.now().year+5),
      initialDate: pickedDate,
    );
    if(date != null)
      setState(() {
        pickedDate = date;
      });
      print(pickedDate.toString());
  }

  void storeData() async {
    SetorC.store(_valUang, pickedDate.toString(), _valSampah, berat.text).then((res){
      SomeAlerts.fClose();
      if(res['status']=='ok' && res['status']!=null){
        SomeAlerts.fSuccess(msg: res['msg']);
        Navigator.pop(context);
      }else{
        if(res['pembayaran']!=null){
          SomeAlerts.fFails(msg: res['pembayaran'][0]);
        }else if(res['tanggal']!=null){
          SomeAlerts.fFails(msg: res['tanggal'][0]);
        }else if(res['jenis_sampah']!=null){
          SomeAlerts.fFails(msg: res['jenis_sampah'][0]);
        }else if(res['berat']!=null){
          SomeAlerts.fFails(msg: res['berat'][0]);
        }
      }
    });
  }

  @override
  void initState() {
    pickedDate = DateTime.now();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff84c263),
          title: Text("Setor Sampah"),
        ),
        body: Container(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              Container(
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
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                    top: 120, bottom: 0, left: 0, right: 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    InkWell(
                      onTap: (){
                        _pickDate();
                      },
                      child: Text("Pembayaran",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold)),
                    ),
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
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          SizedBox(
                            height: 100,
                          ),
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
                                child: InkWell(
                                  onTap: (){
                                    _pickDate();
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 40, right: 40, top: 10, bottom: 10),
                                    child: TextField(
                                      readOnly: true,
                                      keyboardType: TextInputType.datetime,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Tanggal",
                                        hintStyle: TextStyle(
                                            color: Color(0xff222222),
                                            fontSize: 14),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                                top: 40, bottom: 0, left: 0, right: 0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                new Text("Jenis Sampah",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold)),
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
                                    controller: berat,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Berat(Kg)",
                                      hintStyle: TextStyle(
                                          color: Color(0xff222222),
                                          fontSize: 14),
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
                                  onPressed: () {
                                    if(
                                      _valUang==''|| _valUang==null ||
                                      pickedDate.toString()=='' || pickedDate.toString()==null ||
                                      _valSampah=='' || _valSampah==null ||
                                      berat.text=='' || berat.text==null){
                                      SomeAlerts.fFails(msg: "Silahkan masukkan semua data");
                                    }else{
                                      SomeAlerts.fOpen(msg: "Menyetor sampah \n Silahkan tunggu", isClosesable: false);
                                      storeData();
                                    }
                                  })),
                        ],
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
