import 'package:flutter/widgets.dart';
import 'package:mortalityday/content/i18n.dart';

class Quote {
  String text;
  String author;

  // from Json
  Quote(Map<String, dynamic> data) {
    text = data['text'];
    author = data['author'];
  }

  // from Data
  Quote.fromData(String text, String author) {
    this.text = text;
    this.author = author;
  }

  // default not internet quote
  Quote.noInternetQuote(BuildContext context) {
    this.text = I18n.of(context).noDataQuoteText;
    this.author = I18n.of(context).noDataQuoteAuthor;
  }
}