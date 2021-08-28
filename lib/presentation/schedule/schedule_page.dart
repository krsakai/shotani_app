import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shotani_app/presentation/schedule/schedule_model.dart';
import 'package:shotani_app/presentation/tab_page.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:shotani_app/extension/connection_state_extension.dart' show StateToFlag;

class SchedulePage extends TabPage {
  SchedulePage();

  final String pageName = "試合日程";

  WebViewController _controller;

  @override
  Widget build(BuildContext context) {
    final model = useProvider(scheduleModelProvider);
    
    return Scaffold(
      appBar: AppBar(
        title: Text(pageName),
        brightness: Brightness.dark,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () => model.reload()
          ),
        ],
      ),
      backgroundColor: Colors.grey.withOpacity(0.5),
      body: StreamBuilder(
        stream: model.loadStream,
        builder: (context, snapshot) {
          if (snapshot.connectionState.isWaiting || !snapshot.hasData || snapshot.data) {
            return Center(child: const CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          }
          return Opacity(
            opacity: model.isLoading ? 0 : 1,
            child: WebView(
              onWebViewCreated: (WebViewController webViewController) async {
                _controller = webViewController;
                await _loadHtmlFromAssets(model);
              },
              javascriptMode: JavascriptMode.unrestricted,
            ),
          );
        }
      )
    );
  }

  Future _loadHtmlFromAssets(ScheduleModel model) async {
    await _controller.loadUrl(Uri.dataFromString(
      model.template,
      mimeType: 'text/html',
      encoding: Encoding.getByName('utf-8')
    ).toString());
    await model.loadedWebView();
  }
}
