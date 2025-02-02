class QuaiAddress extends JsonSerializable {
  final String address;
  final int addressIdx;

  QuaiAddress({
    required this.address,
    required this.addressIdx,
  });

  @override
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'address': address,
      'addressIdx': addressIdx,
    };
  }

  factory QuaiAddress.fromJson(Map<String, dynamic> map) {
    return QuaiAddress(
      address: map['address'] as String,
      addressIdx: map['addressIdx'] as int,
    );
  }
}

abstract class JsonSerializable {
  JsonSerializable();

  Map<String, dynamic> toJson();

  factory JsonSerializable.fromJson(Map<String, dynamic> map) {
    throw UnimplementedError();
  }
}
