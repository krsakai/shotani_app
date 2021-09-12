import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ribbon/ribbon.dart';
import 'package:shotani_app/extension/connection_state_extension.dart' show StateToFlag;
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shotani_app/presentation/quiz/quiz_model.dart';
import 'package:shotani_app/presentation/quiz/quiz_result_modal_page.dart';
import 'package:shotani_app/presentation/tab_page.dart';
import 'package:shotani_app/util/colors.dart';
import 'package:shotani_app/util/font.dart';

class QuizPage extends TabPage {
  QuizPage();

  final String pageName = "大谷クイズ";

  final sectionHeaderHeight = 30.0;
  final sectionHeaderColor = AppColor.primarySwatch;
  final sectionHeaderTextStyle = TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    final model = useProvider(quizModelProvider);
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
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    children: [
                      Container(
                        height: sectionHeaderHeight,
                        width: double.infinity,
                        color: sectionHeaderColor,
                        child: Center(
                          child: Text( "問題", style: sectionHeaderTextStyle),
                        ),
                      ),
                      Expanded(
                        child: Card(
                          child: Container(
                            width: double.infinity,
                            color: AppColor.offWhite,
                            child: Container(
                              child: Container(
                                padding: EdgeInsets.all(5),
                                child: AutoSizeText(
                                  model.selectingQuiz.issueText, 
                                  style: AppFont.systemBoldBlack(20),
                                  minFontSize: 4,
                                  textAlign: TextAlign.left
                                )
                              )
                            ),
                          ),
                        ),
                      ),
                       SizedBox(height: 5),
                       Container(
                        height: sectionHeaderHeight,
                        width: double.infinity,
                        color: sectionHeaderColor,
                        child: Center(
                          child: Text( "選択肢", style: sectionHeaderTextStyle),
                        ),
                      ),
                      Card(
                        child: Stack(
                          children: selectionList(model, context)
                        ),
                      ),
                    ]
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: answerAreaWidget(model)
              ),
            ]
          );
        }
      )
    );
  }

  List<Widget> selectionList(QuizModel model, BuildContext context) {
    final filter = Positioned.fill(
      child: Container(
        width: double.infinity,
        color: Colors.grey.withOpacity(0.5),
      )
    );
    final selectionList = Container(
      width: double.infinity,
      color: AppColor.offWhite,
      child: Column(
        children: selectionItemList(model) + [
          Padding(
            padding: EdgeInsets.only(left: 20,right: 20, bottom: 10),
            child: ElevatedButton(
              onPressed: model.selectedItem.isEmpty ? null : () async {
                Navigator.of(context).push<void>(QuizResultModelRoute(page: QuizResultModelPage(model)));
                await Future.delayed(Duration(milliseconds: 750));
                Navigator.pop(context);
                model.setQuizAnswerState(false);
              }, 
              child: Center(
                child: Text("回答する"))
            ),
          )
        ]
      )
    );
    return model.isAnswering ? [selectionList] : [selectionList, filter];
  }

  List<Widget> selectionItemList(QuizModel model) {
    // ignore: unnecessary_cast
    return model.selectingQuiz.selectionList.map((selectionItem) => RadioListTile(
      title: Text(
        selectionItem,
        style: AppFont.systemBoldBlack(18)
      ),
      value: selectionItem,
      groupValue: model.selectedItem,
      onChanged: (String value) {
        model.setSelectedItem(value);
      }
    ) as Widget).toList();
  }

  Widget answerAreaWidget(QuizModel model) {
    return model.isAnswering ? Center() : Container(
      padding: EdgeInsets.only(left: 5, top: 0, right: 5, bottom: 5),
      child: Column(
        children: [
          Container(
            height: sectionHeaderHeight,
            width: double.infinity,
            color: sectionHeaderColor,
            child: Center(
              child: Text( "答え", style: sectionHeaderTextStyle),
            ),
          ),
          Expanded(
            child: Card(
              child: Ribbon(
                title: model.isCorrectQuiz ? '正解' : '不正解',
                nearLength: 20,
                farLength: 60,
                color: model.isCorrectQuiz ? AppColor.primaryRed : AppColor.primarySwatch,
                child: Container(
                  width: double.infinity,
                  color: AppColor.offWhite,
                  child: Container(
                    padding: EdgeInsets.all(0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 60),
                          child: Center(
                            child: Text(
                              "正解は 「" + model.selectingQuiz.answerText + "」 です",
                              style: AppFont.systemBoldBlack(18)
                            )
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.zero,
                          child: Center(
                            child: Text(
                              model.selectingQuiz.answerDescribeText,
                              style: AppFont.systemBoldBlack(18)
                            )),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20,right: 20, bottom: 10),
                          child: ElevatedButton(
                            onPressed: model.selectedItem.isEmpty ? null : () {
                              model.setNextQuizItem();
                            }, 
                            child: Center(
                              child: Text("次へ"))
                          ),
                        )
                      ]
                    )
                  ),
                ),
              ),
            ),
          ),
        ]
      )
    );
  }
}
