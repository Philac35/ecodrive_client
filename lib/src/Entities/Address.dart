class Address{
  int? id;
  int? number;
  String? type;
  String address;
  String? complementAddress;
  int? postCode;
  String? city;
  String? country ;
  DateTime? createdAt;

  Address({this.id, this.type, required this.address, this.complementAddress, required this. postCode,required this.city, this.country, required this.createdAt});

}