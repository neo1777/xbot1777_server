///
//  Generated code. Do not modify.
//  source: contract.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'contract.pb.dart' as $0;
export 'contract.pb.dart';

class CoinServerClient extends $grpc.Client {
  static final _$getCoins = $grpc.ClientMethod<$0.Empty, $0.Coins>(
      '/CoinServer/GetCoins',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Coins.fromBuffer(value));
  static final _$searchCoin = $grpc.ClientMethod<$0.SearchQuery, $0.Coins>(
      '/CoinServer/SearchCoin',
      ($0.SearchQuery value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Coins.fromBuffer(value));

  CoinServerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.Coins> getCoins($0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCoins, request, options: options);
  }

  $grpc.ResponseFuture<$0.Coins> searchCoin($0.SearchQuery request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$searchCoin, request, options: options);
  }
}

abstract class CoinServerServiceBase extends $grpc.Service {
  $core.String get $name => 'CoinServer';

  CoinServerServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Coins>(
        'GetCoins',
        getCoins_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Coins value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SearchQuery, $0.Coins>(
        'SearchCoin',
        searchCoin_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SearchQuery.fromBuffer(value),
        ($0.Coins value) => value.writeToBuffer()));
  }

  $async.Future<$0.Coins> getCoins_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getCoins(call, await request);
  }

  $async.Future<$0.Coins> searchCoin_Pre(
      $grpc.ServiceCall call, $async.Future<$0.SearchQuery> request) async {
    return searchCoin(call, await request);
  }

  $async.Future<$0.Coins> getCoins($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Coins> searchCoin(
      $grpc.ServiceCall call, $0.SearchQuery request);
}
