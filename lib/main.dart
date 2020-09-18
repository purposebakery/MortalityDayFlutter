import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mortalityday/global/sizes.dart';
import 'package:shake/shake.dart';

import 'content/i18n.dart';
import 'domain/model/quote.dart';
import 'domain/repository.dart';
import 'global/colors.dart' as MyColors;
import 'global/framework.dart';
import 'global/resources.dart';
import 'utils/external.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: localizationsDelegates,
      supportedLocales: supportedLocales,
      theme: ThemeData(
        primarySwatch: MyColors.primary,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: QuotePage(),
    );
  }
}

class QuotePage extends StatefulWidget {
  QuotePage({Key key}) : super(key: key);

  @override
  QuotePageState createState() => QuotePageState();
}

class QuotePageState extends State<QuotePage> {
  ShakeDetector detector;

  @override
  Widget build(BuildContext context) {
    detector = ShakeDetector.autoStart(
        onPhoneShake: () {
          reload();
        }
    );

    return Scaffold(
      appBar: createAppBar(),
      body: createBody(),
      floatingActionButton: createFloatingActionButton(),
    );
  }

  @override
  dispose() {
    if (detector != null) {
      detector.stopListening();
    }
    super.dispose();
  }

  AppBar createAppBar() {
    return AppBar(
      title: Text(I18n.of(context).title),
    );
  }

  Widget createBody() {
    return FutureBuilder<Quote>(
        future: Repository().getRandomQuote(context),
        builder: (BuildContext context, AsyncSnapshot<Quote> snapshot) {
          if (snapshot.hasData && snapshot.data != null) {
            return createBodyLoaded(snapshot.data);
          } else {
            return createBodyWaiting();
          }
        });
  }

  Widget createBodyWaiting() {
    return Center(child: CircularProgressIndicator());
  }

  Widget createBodyLoaded(Quote quote) {
    return Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: space2),
              child: Text(quote.text, style: textStyleXXXLarge)
          ),
          SizedBox(height: space1),
          Text(quote.author, style: textStyleXLarge)
        ])
    );
  }

  FloatingActionButton createFloatingActionButton(Quote quote) {
    return FloatingActionButton(
      onPressed: External.shareText(text),
      tooltip: (isIOS ? I18n.of(context).send : I18n.of(context).share),
      child: Icon(iconShare),
    );
  }

  void reload() {
    Fluttertoast.showToast(
        msg: "Reload"
    );
  }
}
