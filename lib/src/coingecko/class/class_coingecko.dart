// To parse this JSON data, do
//
//     final coingecko = coingeckoFromMap(jsonString);

import 'dart:convert';

class Coingecko {
  Coingecko({
    required this.id,
    required this.symbol,
    required this.name,
    required this.image,
    required this.currentPrice,
    required this.marketCap,
    required this.marketCapRank,
    required this.fullyDilutedValuation,
    required this.totalVolume,
    required this.high24H,
    required this.low24H,
    required this.priceChange24H,
    required this.priceChangePercentage24H,
    required this.marketCapChange24H,
    required this.marketCapChangePercentage24H,
    required this.circulatingSupply,
    required this.totalSupply,
    required this.maxSupply,
    required this.ath,
    required this.athChangePercentage,
    required this.athDate,
    required this.atl,
    required this.atlChangePercentage,
    required this.atlDate,
    required this.roi,
    required this.lastUpdated,
  });

  String id;
  String symbol;
  String name;
  String image;
  double? currentPrice;
  double? marketCap;
  int? marketCapRank;
  double? fullyDilutedValuation;
  double? totalVolume;
  double? high24H;
  double? low24H;
  double? priceChange24H;
  double? priceChangePercentage24H;
  double? marketCapChange24H;
  double? marketCapChangePercentage24H;
  double? circulatingSupply;
  double? totalSupply;
  double? maxSupply;
  double? ath;
  double? athChangePercentage;
  DateTime? athDate;
  double? atl;
  double? atlChangePercentage;
  DateTime? atlDate;
  Roi? roi;
  DateTime? lastUpdated;

  factory Coingecko.fromJson(String str) => Coingecko.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Coingecko.fromMap(Map<String, dynamic> json) => Coingecko(
        id: json["id"],
        symbol: json["symbol"],
        name: json["name"],
        image: json["image"],
        currentPrice: json["current_price"]?.toDouble(),
        marketCap: json["market_cap"]?.toDouble(),
        marketCapRank: json["market_cap_rank"],
        fullyDilutedValuation: json["fully_diluted_valuation"]?.toDouble(),
        totalVolume: json["total_volume"]?.toDouble(),
        high24H: json["high_24h"]?.toDouble(),
        low24H: json["low_24h"]?.toDouble(),
        priceChange24H: json["price_change_24h"]?.toDouble(),
        priceChangePercentage24H: json["price_change_percentage_24h"],
        marketCapChange24H: json["market_cap_change_24h"]?.toDouble(),
        marketCapChangePercentage24H: json["market_cap_change_percentage_24h"],
        circulatingSupply: json["circulating_supply"]?.toDouble(),
        totalSupply: json["total_supply"],
        maxSupply: json["max_supply"],
        ath: json["ath"]?.toDouble(),
        athChangePercentage: json["ath_change_percentage"]?.toDouble(),
        athDate:
            json["ath_date"] == null ? null : DateTime.parse(json["ath_date"]),
        atl: json["atl"]?.toDouble(),
        atlChangePercentage: json["atl_change_percentage"]?.toDouble(),
        atlDate:
            json["atl_date"] == null ? null : DateTime.parse(json["atl_date"]),
        roi: json["roi"] == null ? null : Roi.fromMap(json["roi"]),
        lastUpdated: json["last_updated"] == null
            ? null
            : DateTime.parse(json["last_updated"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "symbol": symbol,
        "name": name,
        "image": image,
        "current_price": currentPrice,
        "market_cap": marketCap,
        "market_cap_rank": marketCapRank,
        "fully_diluted_valuation": fullyDilutedValuation,
        "total_volume": totalVolume,
        "high_24h": high24H,
        "low_24h": low24H,
        "price_change_24h": priceChange24H,
        "price_change_percentage_24h": priceChangePercentage24H,
        "market_cap_change_24h": marketCapChange24H,
        "market_cap_change_percentage_24h": marketCapChangePercentage24H,
        "circulating_supply": circulatingSupply,
        "total_supply": totalSupply,
        "max_supply": maxSupply,
        "ath": ath,
        "ath_change_percentage": athChangePercentage,
        "ath_date": athDate?.toIso8601String(),
        "atl": atl,
        "atl_change_percentage": atlChangePercentage,
        "atl_date": atlDate?.toIso8601String(),
        "roi": roi == null ? null : roi!.toMap(),
        "last_updated": lastUpdated!.toIso8601String(),
      };
}

class Roi {
  Roi({
    required this.times,
    required this.currency,
    required this.percentage,
  });

  double? times;
  String currency;
  double? percentage;

  factory Roi.fromJson(String str) => Roi.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Roi.fromMap(Map<String, dynamic> json) => Roi(
        times: json["times"]?.toDouble(),
        currency: json["currency"],
        percentage: json["percentage"]?.toDouble(),
      );

  Map<String, dynamic> toMap() => {
        "times": times,
        "currency": currency,
        "percentage": percentage,
      };
}
