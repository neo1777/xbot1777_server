// ignore: implementation_imports
import 'package:grpc/src/server/call.dart';
import 'package:xbot1777_server/src/protos/generated/contract.pbgrpc.dart';
import 'package:xbot1777_server/src/utils.dart';

class CoinServer extends CoinServerServiceBase {
  // start server after successfully reading list of hospitals
  final List<CoinData> coinData;
  late List<Coin> _coins;

  CoinServer({required this.coinData}) {
    _coins = coinData.map((hd) {
      final icone = Icon(
        iconurl: hd.iconurl,
      );
      return Coin(
        name: hd.name,
        simbol: hd.simbol,
        icon: icone,
      );
    }).toList();
  }

  @override
  Future<Coins> getCoins(ServiceCall call, Empty request) async {
    return Coins(coins: _coins);
  }

  @override
  Future<Coins> searchCoin(
    ServiceCall call,
    SearchQuery request,
  ) async {
    final searchTerm = request.value;
    final filtered = _coins.where(
      (hospital) => hospital.name.toLowerCase().contains(
            searchTerm.toLowerCase(),
          ),
    );
    return Coins(
      coins: filtered,
    );
  }
}
