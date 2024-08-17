/*import 'package:flutter/foundation.dart';
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
}*/

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  final String initialUrl;

  const WebViewPage({
    super.key,
    required this.initialUrl,
  });

  @override
  _WebViewPageState createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();

    // Initialize WebViewController
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {
            // Handle web resource errors here
            if (kDebugMode) {
              print('Web resource error occurred: ${error}');
            }
          },
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(widget.initialUrl));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('E-Book')),
      body: WebViewWidget(controller: _controller),
    );
  }
}
