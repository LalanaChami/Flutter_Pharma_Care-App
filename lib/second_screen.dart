import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: WebviewScaffold(
          url:
              "http://phama-care-lalana.s3-website-us-east-1.amazonaws.com/doctorLogin"),
    );
  }
}
