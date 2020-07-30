import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mortalityday/domain/model/quote.dart';

class Backend {
  static const String BASEURL = "https://filedn.com/lAjOlCQrDyYJJGsoJSXzCDz/";

  static const String RESOURCE_QUOTES = "quotes.json";

  Future<List<Quote>> getQuotes() async {
    List<Quote> result = List();
    var response = await http.get("$BASEURL$RESOURCE_QUOTES");
    if (response.statusCode == 200) {
      json.decode(response.body).forEach((element) {
        result.add(Quote(element));
      });
    }

    return Future.value(result);
  }
}