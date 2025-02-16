import 'dart:typed_data';

class Photo{
  int? id;
  String? title;
  String? uri;
  String? description;
  Uint8List? photoFile;

  Photo({this.id,required this.title, this.uri, this.description,this.photoFile});

}
