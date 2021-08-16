import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shotani_app/app_model.dart';
import 'package:shotani_app/presentation/home/home_tab_page.dart';
import 'package:shotani_app/util/colors.dart';
import 'package:shotani_app/util/never_glow_scroll.dart';

class Application extends HookWidget {

  @override
  Widget build(BuildContext context) {
    final _ = useProvider(appModelProvider);
    return MaterialApp(
      builder: (context, child) => NeverGlowScrollConfiguration(child: child),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: AppColor.primarySwatch,
      ),
      home: Scaffold(
        body: HomeTabPage()
      )
    );
  }
}
