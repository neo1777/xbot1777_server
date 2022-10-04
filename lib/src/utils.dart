import 'package:dio/dio.dart';
import 'package:xbot1777_server/src/coingecko/class/class_coingecko.dart';

class Utils {
  static Future<List<CoinData>> getCoinData() async {
    List responsetotal = [];
    for (var i = 1; i < 3; i++) {
      try {
        Response response = await Dio().get(
          'https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=250&page=${i}&sparkline=false',
          options: Options(
            followRedirects: true,
            validateStatus: (status) {
              return status! <= 500;
            },
          ),
        );
        responsetotal.addAll(response.data);
      } catch (e) {
        print('getCoinData errore: $e');
      }
    }

    //_tokendata.image.add(response.data['image']['thumb'].toString());
    //debugPrint('response: ${response.data}');
    List<Coingecko> list = List.generate(responsetotal.length,
        (index) => Coingecko.fromMap(responsetotal[index]));

    print('response: ${list.length}');
    //return List<Coingecko>.castFrom(response.data);
    //Coingecko.fromJson(response.data);
    //     response.data['image']['thumb'].toString());
    return list.map((e) => CoinData(e.name, e.symbol, e.image)).toList();
  }
}

class CoinData {
  final String name, simbol, iconurl;

  CoinData(this.name, this.simbol, this.iconurl);
}
