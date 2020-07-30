import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:mortalityday/domain/model/quote.dart';
import 'package:mortalityday/network/backend.dart';

class Repository {
  Backend backend = Backend();

  // Singleton pattern through factory method
  static final Repository instance = Repository.create();
  Repository.create();
  factory Repository() {
    return instance;
  }

  Future<List<Quote>> _getQuotes() {
    return backend.getQuotes();
  }

  Future<Quote> getRandomQuote(BuildContext context) async { // suspend?
    var quotes = await _getQuotes(); // async and await?
    Quote quote;
    if (quotes == null || quotes.isEmpty) {
      quote = Quote.noInternetQuote(context);
    } else {
      quote = quotes[Random().nextInt(quotes.length - 1)];
    }
    return Future.value(quote);
  }
}