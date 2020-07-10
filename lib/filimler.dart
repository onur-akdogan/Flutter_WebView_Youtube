
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(MaterialApp(home: Filmler()));

class Filmler extends StatelessWidget {

  static Future<String> get _url async {
    await Future.delayed(Duration(seconds: 3));
    return 'https://www.youtube.com/feed/trending?bp=4gIuCggvbS8wMnZ4bhIiUEx6akZiYUZ6c21NUTZNLVVxX05DOWw4dW45LUtZZ044RA%3D%3D';
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    body: Center(
      child:FutureBuilder(
        future: _url,
        builder: (BuildContext context, AsyncSnapshot snapshot) => snapshot.hasData
        ? Container(
          color:Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.only(top: 22),
            child: WebViewWidget(url: snapshot.data,),
          ),
        )
        : CircularProgressIndicator()),
  ),);
}

class WebViewWidget extends StatefulWidget {
  final String url;
  WebViewWidget({this.url});

  @override
  _WebViewWidget createState() => _WebViewWidget();
}

class _WebViewWidget extends State<WebViewWidget> {
  WebView _webView;
  @override
  void initState() {
    super.initState();
      _webView = WebView(
      initialUrl: widget.url,
      javascriptMode: JavascriptMode.unrestricted,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _webView = null;
  }

  @override
  Widget build(BuildContext context) => _webView;
}