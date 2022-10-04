import 'package:grpc/grpc.dart';
import 'package:xbot1777_server/src/protos/generated/contract.pbgrpc.dart';

void main(List<String> args) async {
  final channelOptions = ChannelOptions(
    credentials: ChannelCredentials.insecure(), // transmit unencrypted data.,
  );

  final channel = ClientChannel(
    'localhost',
    port: 12345, // connect to localhost. Where it's served.
    options: channelOptions, // pass the channelOptions above.
  );

  final client = CoinServerClient(
    channel,
    interceptors: [],
  ); // this handles communication to the server
  final allCoins = await client.getCoins(Empty());
  print('All coins: ${allCoins.coins}');
  await channel.terminate();
}
