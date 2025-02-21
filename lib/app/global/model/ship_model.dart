enum ShipStatus { ordered, confirmed, onTheWay, delivered, cancelled }

class ShipModel {
  String shipName;
  String shipTime;
  ShipStatus shipStatus;
  double longitude;
  double latitude;
  String shipDate;
  String shipRate;

  ShipModel({
    required this.shipName,
    required this.shipTime,
    required this.shipStatus,
    required this.longitude,
    required this.latitude,
    required this.shipDate,
    required this.shipRate,
  });

  factory ShipModel.fromJson(Map<String, dynamic> json) {
    return ShipModel(
      shipName: json['shipName'] ?? '',
      shipTime: json['shipTime'] ?? '',
      shipStatus: ShipStatus.values.firstWhere(
          (e) => e.toString() == 'ShipStatus.' + (json['shipStatus'] ?? 'ordered'),
          orElse: () => ShipStatus.ordered),
      longitude: (json['longitude'] ?? 0.0).toDouble(),
      latitude: (json['latitude'] ?? 0.0).toDouble(),
      shipDate: json['shipDate'] ?? '',
      shipRate: json['shipRate'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'shipName': shipName,
      'shipTime': shipTime,
      'shipStatus': shipStatus.toString().split('.').last,
      'longitude': longitude,
      'latitude': latitude,
      'shipDate': shipDate,
      'shipRate': shipRate,
    };
  }
}
