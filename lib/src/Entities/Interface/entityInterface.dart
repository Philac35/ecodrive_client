abstract interface class EntityInterface{
  // We can't use a factory constructor in an abstract class
  // Instead, we'll define an abstract fromJson method
  static EntityInterface fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('fromJson() has not been implemented.');
  }
  Map<String, dynamic> toJson();

}

