import 'package:flutter/material.dart';
import 'package:shotani_app/presentation/quiz/quiz_model.dart';
import 'package:shotani_app/util/font.dart';

class QuizResultModelRoute extends TransitionRoute<void> {
  QuizResultModelRoute({
    @required this.page
  });
  final Widget page;

  @override
  Iterable<OverlayEntry> createOverlayEntries() {
    return [
      OverlayEntry(builder: _buildModalBarrier),
      OverlayEntry(builder: (context) => Center(child: page))
    ];
  }

  @override
  bool get opaque => false;

  @override
  Duration get transitionDuration => const Duration(milliseconds: 1);

  Widget _buildModalBarrier(BuildContext context) {
    final animation = this.animation;
    return IgnorePointer(
      ignoring: animation.status == AnimationStatus.reverse || animation.status == AnimationStatus.dismissed,
      child: AnimatedModalBarrier(
        color: animation.drive(
          ColorTween(
            begin: Colors.transparent,
            end: Colors.black.withAlpha(80),
          ),
        ),
      ),
    );
  }
}

class QuizResultModelPage extends StatelessWidget {
  QuizResultModelPage(this.model);
  final QuizModel model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withAlpha(80),
      body: Center(
        child: model.isCorrectQuiz ? correct : incorrect
      )
    );
  }

  Widget get correct => Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text("正解", style: AppFont.systemBoldWhite(50)),
      Text("◯", style: AppFont.systemBoldRed(120)),
    ],
  );

  Widget get incorrect => Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text("不正解", style: AppFont.systemBoldWhite(50)),
      Text("x", style: AppFont.systemBoldBlue(120)),
    ],
  );
}