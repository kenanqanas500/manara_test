enum ShipStatus { ordered, confirmed, onTheWay, delivered, cancelled }

class ShipModel {
  String shipName;
  String shipTime;
  ShipStatus shipStatus;
  String longitude;
  String latitude;
  String shipDate;
  String shipRate;
  bool? isOpened;

  ShipModel({
    required this.shipName,
    required this.shipTime,
    required this.shipStatus,
    required this.longitude,
    required this.latitude,
    required this.shipDate,
    required this.shipRate,
    this.isOpened = false,
  });

  factory ShipModel.fromJson(Map<String, dynamic> json) {
    return ShipModel(
      shipName: json['shipName'] ?? '',
      shipTime: json['shipTime'] ?? '',
      shipStatus: ShipStatus.values.firstWhere(
        (e) => e.toString().split('.').last == json['shipStatus'],
        orElse: () => ShipStatus.ordered,
      ),
      longitude: json['longitude'] ?? '',
      latitude: json['latitude'] ?? '',
      shipDate: json['shipDate'] ?? '',
      shipRate: json['shipRate'] ?? '',
      isOpened: false,
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

  ShipModel copyWithDynamic(Map<String, dynamic> updates) {
    return ShipModel(
      shipName: updates['shipName'] ?? shipName,
      shipTime: updates['shipTime'] ?? shipTime,
      shipStatus: updates['shipStatus'] != null
          ? updates['shipStatus'] is ShipStatus
              ? updates['shipStatus']
              : ShipStatus.values.firstWhere(
                  (e) => e.toString().split('.').last == updates['shipStatus'],
                  orElse: () => shipStatus,
                )
          : shipStatus,
      longitude: updates['longitude'] ?? longitude,
      latitude: updates['latitude'] ?? latitude,
      shipDate: updates['shipDate'] ?? shipDate,
      shipRate: updates['shipRate'] ?? shipRate,
      isOpened: updates['isOpened'] ?? isOpened,
    );
  }
}
