import 'package:ecodrive_client/src/Services/Interface/Service.dart';
import 'package:http/http.dart' as http;


abstract class AbstractHTMLService implements Service{
  http.Request? htmlRequest;
  Future<http.Response>? response;

  AbstractHTMLService(this.htmlRequest);

  Future<bool> send(htmlRequest);
  Future<dynamic> fetch(htmlRequest);
  dynamic parseResult();

}


