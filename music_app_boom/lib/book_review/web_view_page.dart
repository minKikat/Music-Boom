import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatelessWidget {
  final String previewLink;

  const WebViewPage({
    super.key,
    required this.previewLink,
  });

  @override
  Widget build(BuildContext context) {
    // Initialize WebView platform if necessary
    if (defaultTargetPlatform == TargetPlatform.android) {
      WebView.platform = SurfaceAndroidWebView();
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Book Preview'),
      ),
      body: WebView(
        initialUrl: previewLink,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
