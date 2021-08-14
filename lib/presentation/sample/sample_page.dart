import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shotani_app/presentation/sample/sample_model.dart';

class SamplePage extends HookWidget {
  SamplePage(this.pageName);

  final String pageName;

  @override
  Widget build(BuildContext context) {
    final model = useProvider(sampleModelProvider);
    
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:$pageName',
            ),
            Text(
              '${model.counter}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: model.incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
