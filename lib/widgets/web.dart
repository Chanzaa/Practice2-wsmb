import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class WebPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse("https://www.dsd.gov.my/"));
    return Scaffold(
      appBar: AppBar(
        title: Text("Web view"),
        foregroundColor: Colors.white,
        backgroundColor: Colors.purpleAccent,
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
