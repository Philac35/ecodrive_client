import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import '../LogSystem/LogSystem.dart';

import 'Abstract/AbstractHTMLService.dart';

class HTMLService extends AbstractHTMLService {
  HTMLService({Request? request}) : super(request);

  @override
  int getId() {
    var random = Random();
    int randomNumber = random.nextInt(10 ^ 15);
    return randomNumber;
  }

  @override
  //Function fetch
  //@param htmlRequest can be http.Request or String
  Future<http.Response?> fetch(dynamic htmlRequest) async {
    try {
      if (htmlRequest is String) {
        Uri? uri = Uri.tryParse(htmlRequest);
        if (uri == null) {
          throw ArgumentError('Invalid URI: $htmlRequest');
        }

        super.response = http.get(uri);
        return await super.response;
      } else if (htmlRequest is http.Request) {
        http.StreamedResponse streamedResponse =
            await http.Client().send(htmlRequest);
        super.response = http.Response.fromStream(streamedResponse);
        return await super.response;
      } else {
        throw ArgumentError('Invalid request type: $htmlRequest');
      }
    } catch (e) {
      print('Error in fetch function: $e');
      LogSystem().error('Error in fetch function: $e');
      return null;
    }
  }

  @override
  dynamic parseResult()async {
    try {
      // Check if the response status code is successful
    Response?  res=await super.response;

      if (res != null && res.statusCode >= 200 && res.statusCode < 300) {
        // Decode the response body (which is a JSON string)
        return jsonDecode(res.body);
      } else {
        print('Request failed with status: ${res?.statusCode}.');('Request failed with status: ${res?.statusCode}.');
        LogSystem().debug('Request failed with status: ${res?.statusCode}.');
        return null; // Or handle the error as needed

      }
    } catch (e) {
      print('Error parsing JSON: $e');
      LogSystem().error('Error parsing JSON: $e');

      return null;

    }
  }

  @override
  Future<bool> send({htmlRequest,String? method,dynamic data}) async {
    if (htmlRequest is! String) {
      print('Invalid request type: $htmlRequest');
      LogSystem().debug('Invalid request type: $htmlRequest');
      return false;
    }

    Uri? uri = Uri.tryParse(htmlRequest);
    http.Response response;



    //TODO to improve 19/02/2025
    //HttpHeaders header=
    switch(method){
      case "GET" : (uri) async =>{response= await http.get(uri)};
      case "POST":(uri) async =>{response= await http.post(uri, body:data)};
      case "PUT":(uri) async =>{response= await http.put(uri)};
      case "PATCH":(uri) async =>{response= await http.patch(uri)};
      default: ;
    }





    if (uri == null) {
      print('Invalid URI: $htmlRequest');
      LogSystem().debug('Invalid URI: $htmlRequest');
      return false;
    }

    try {
      http.Response response = await http.get(uri);
      if (response.statusCode == 200) {
        return true;
      } else {
        print('Error: Received status code ${response.statusCode}');
        LogSystem().debug('Error: Received status code ${response.statusCode}');
        return false;
      }
    } catch (e) {
      print('Error HTMLService function send return: $e');
      LogSystem().error('Error HTMLService function send return: $e');
      return false;
    }
  }
}


