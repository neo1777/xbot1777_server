import 'dart:io';

import 'package:grpc/grpc.dart';
import 'package:xbot1777_server/src/server.dart';
import 'package:xbot1777_server/src/utils.dart';

void main(List<String> arguments) async {
  var port = '12345';
  if (port == null) {
    throw Exception('Port variable is not defined');
  }

  final intPort = int.parse(port);

  final coinsData = await Utils.getCoinData();

  final server = Server([
    CoinServer(
      coinData: coinsData,
    ),
  ]);

  await server.serve(port: intPort);

  print('Server running at port ${server.port}');
}
