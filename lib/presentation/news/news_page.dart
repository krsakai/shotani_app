import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ribbon/ribbon.dart';
import 'package:shotani_app/domain/news/news.dart';
import 'package:shotani_app/extension/connection_state_extension.dart' show StateToFlag;
import 'package:shotani_app/util/font.dart';
import 'package:shotani_app/util/url_launcher.dart';

import 'news_model.dart';

class NewsPage extends HookWidget {
  NewsPage();

  final String pageName = "最新ニュース";

  @override
  Widget build(BuildContext context) {
    final model = useProvider(newsModelProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(pageName),
        brightness: Brightness.dark,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Colors.grey.withOpacity(0.5),
      body: StreamBuilder(
        stream: model.loadStream,
        builder: (context, snapshot) {
          if (snapshot.connectionState.isWaiting || !snapshot.hasData || snapshot.data) {
            return Center(
              child: const CircularProgressIndicator()
            );
          }
          if (snapshot.hasError) {
            return Center(
              child: Text(
                "Error: ${snapshot.error}"
              ),
            );
          }
          return ListView.builder(
            padding: EdgeInsets.all(5),
            itemCount: model.newsList.length,
            itemBuilder: (BuildContext context, int index) {
            return NewsCell(model.newsList[index]);
          },
        );
        }
      )
    );
  }
}

class NewsCell extends HookWidget {
  NewsCell(this.news);
  final News news;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {
        UrlLancher.launchInBrowser(news.linkUrl)
      },
      child: Card(
        shadowColor: Colors.black,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          children: [
            Ribbon(
              nearLength: 1,
              farLength: 1,
              title: news.date,
              titleStyle: TextStyle(color: Colors.white, fontSize: 12,fontWeight: FontWeight.bold),
              color: Colors.black,
              location: RibbonLocation.topEnd,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1
                  ),
                  borderRadius: BorderRadius.circular(18)
                ),
                child: CachedNetworkImage(
                  imageUrl: news.imageUrl,
                  placeholder: (_, url) => CircularProgressIndicator(),
                  errorWidget: (_, url, error) => Icon(Icons.no_photography , color: Colors.grey)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(news.titleText, style: AppFont.systemBoldBlack(18)),
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(news.messageText, overflow: TextOverflow.visible),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(news.date, style: TextStyle(color: Colors.black.withOpacity(0.7), fontSize: 12)),
                    )
                  )
                )
              ]
            )
          ]
        )
      ),
    );
  }
}

// : Icon(Icons.no_photography , color: Colors.grey, size: 100.0)