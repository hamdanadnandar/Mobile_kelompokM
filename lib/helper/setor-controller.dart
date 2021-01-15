import 'dart:convert';

import 'package:filterin/helper/app-key.dart';
import 'package:filterin/helper/server.dart';
import 'package:filterin/helper/shared-prefs.dart';
import 'package:http/http.dart' as http;

class SetorC {

  static String url = Server.endpoint;

  static Future store(pembayaran,tanggal,jenis_sampah, berat) async {
    var token = await SFP.getToken();
    var res = token==null||token==''?"x" : " "+ token;
    var response = await http.post(url + 'setor/store',
      headers: {
        AppKey.key : AppKey.debug,
        AppKey.auth : AppKey.authKey + res
      },
      body: {
        'pembayaran' : pembayaran,
        'tanggal' : tanggal,
        'jenis_sampah' : jenis_sampah,
        'berat' : berat,
      }
    );
    var data = json.decode(response.body);
    print(data.toString());
    if(response.statusCode==200){
      return data;
    }else{
      return data;
    }
  }
  static Future getData() async {
    var token = await SFP.getToken();
    var res = token==null||token==''?"x" : " "+ token;
    var response = await http.get(url + 'setor/show',
      headers: {
        AppKey.key : AppKey.debug,
        AppKey.auth : AppKey.authKey + res
      }
    );
    var data = json.decode(response.body);
    return data['data'];
  }

}