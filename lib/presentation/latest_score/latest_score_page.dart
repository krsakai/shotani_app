import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ribbon/ribbon.dart';
import 'package:shotani_app/domain/latest_score/latest_score.dart';
import 'package:shotani_app/extension/list_extension.dart';
import 'package:shotani_app/presentation/latest_score/latest_score_model.dart';
import 'package:shotani_app/extension/connection_state_extension.dart' show StateToFlag;
import 'package:shotani_app/extension/datetime_extension.dart';
import 'package:shotani_app/util/border.dart';
import 'package:shotani_app/util/colors.dart';
import 'package:shotani_app/util/font.dart';
import 'package:shotani_app/util/data_table_ribbon.dart';
import 'package:shotani_app/util/url_launcher.dart';
import 'package:table_sticky_headers/table_sticky_headers.dart';
import 'package:auto_size_text/auto_size_text.dart';

class LatestScorePage extends HookWidget {
  LatestScorePage();

  final String pageName = "最新情報";

  @override
  Widget build(BuildContext context) {
    final model = useProvider(latestScoreModelProvider);
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
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Card(
                  elevation: 0,
                  color: Colors.transparent,
                  child: Column(
                    children: [
                      Container(
                        height: 40,
                        width: double.infinity,
                        color: AppColor.tableLeadCell,
                        child: _tableTitle("打者成績")
                      ),
                      Expanded(
                        child: Container(
                          child: _scoreTable(
                            model.hitterScoreColumnTitleList,
                            model.hitterScoreDataList,
                            model.hitterScoreDateColumnRowList
                          )
                        )
                      ),
                    ]
                  ),
                ),
              ),
              // SizedBox(height: 10),
              Expanded(
                child: Card(
                  elevation: 0,
                  color: Colors.transparent,
                  child: Column(
                    children: [
                      Container(
                        height: 40,
                        width: double.infinity,
                        color: AppColor.tableLeadCell,
                        child: _tableTitle("投手成績")
                      ),
                      Expanded(
                        child: _scoreTable(
                          model.pitcherScoreColumnTitleList,
                          model.pitcherScoreDataList,
                          model.pitcherScoreDateColumnRowList
                        )
                      ),
                    ]
                  ),
                ),
              ),
            ]
          );
        }
      )
    );
  }

  final headerCellHeight = 45.0;
  final contentCellHeight = 45.0;
  final leadCellWidth = 120.0;
  final contentCellWidth = 100.0;

  Widget _tableTitle(String text) => Center( child: Text(text,style: AppFont.systemBoldWhite(22)));
  
  Widget _dateColumnTitleCell(String title) => Container(
    height: headerCellHeight,
    width: leadCellWidth,
    decoration: BoxDecoration(
      color: AppColor.tableLeadCell,
      border: AppBorder.border(AppColor.tableBorder, 1),
    ),
    child: Center(
      child: AutoSizeText(
        title, 
        style: AppFont.systemBoldWhite(16),
        maxLines: 1, 
        minFontSize: 4,
        textAlign: TextAlign.center
      ),
    )
  );

  Widget _dateColumnCell(DateTime dateTime, bool isNew) => Container(
    height: headerCellHeight,
    width: leadCellWidth,
    decoration: BoxDecoration(
      color: AppColor.tableLeadCell,
      border: AppBorder.border(AppColor.tableBorder, 1),
    ),
    child: DataTableRibbon(
      isDisplay: isNew,
      text: "New",
      location: RibbonLocation.topStart,
      child: DataTableRibbon(
        isDisplay: true,
        text: dateTime.toStringWith(AppDateFormat.noSeparatorYear),
        color: Colors.black.withOpacity(0.8),
        textColor: Colors.white,
        location: RibbonLocation.topStart,
        child: Center(
          child: AutoSizeText(
            dateTime.toStringWith(AppDateFormat.displayMonthToDay), 
            style: AppFont.systemBoldWhite(16),
            maxLines: 1, 
            minFontSize: 4,
            textAlign: TextAlign.center
          )
        ),
      ),
    )
  );

  Widget _dataTitleCell(String title) => Container(
    height: headerCellHeight,
    width: contentCellWidth,
    decoration: BoxDecoration(
      color: AppColor.tableHeaderCell,
      border: AppBorder.border(AppColor.tableBorder, 1),
    ),
    child: Center(
      child: AutoSizeText(
        title, 
        style: AppFont.systemBoldWhite(16),
        maxLines: 1, 
        minFontSize: 4,
        textAlign: TextAlign.center
      ),
    )
  );
  
  Widget _dataContentCell(LatestScore latestScore, String title, int row) => InkWell(
    onTap: () {
      UrlLancher.launchInBrowser(latestScore.linkInformation['value']);
    },
    child: Container(
      decoration: BoxDecoration(
        color: row.isEven ? AppColor.tableContentCell1: AppColor.tableContentCell2,
        border: AppBorder.border(AppColor.tableBorder, 1),
      ),
      child: Center(
        child: AutoSizeText(
          title, maxLines: 2, 
          minFontSize: 4,
          textAlign: TextAlign.center,
          style: AppFont.systemBlack(14),
        )
      ),
    ),
  );

  Widget _scoreTable(List<String> titleList, List<LatestScore> dataList, List<DateTime> dateRowList) {
    final titleCell = (String title) => _dataTitleCell(title);
    final titleCellList = titleList.map((e) => titleCell(e)).toList();
    final contentCell = (LatestScore score, String title, int index) => _dataContentCell(score, title, index);
    final contentCellList = (LatestScore score, int row) => score.dataList.map((title) => contentCell(score, title, row)).toList();
    final rowCellLists = dataList.mapIndex((latestScore, index) => contentCellList(latestScore, index)).toList();
    final rowTitleCell = (DateTime dateTime, bool isNew) => _dateColumnCell(dateTime, isNew);
    final rowTitleList = dateRowList.mapIndex((e, index) => rowTitleCell(e, index == 0)).toList();
    return StickyHeadersTable(
      cellDimensions: CellDimensions.fixed(
        contentCellWidth: contentCellWidth, 
        contentCellHeight: contentCellHeight, 
        stickyLegendWidth: leadCellWidth, 
        stickyLegendHeight: headerCellHeight
      ),
      columnsLength: titleCellList.length,
      rowsLength: rowCellLists.length,
      columnsTitleBuilder: (column) => titleCellList[column],
      contentCellBuilder: (column, row) => rowCellLists[row][column],
      legendCell: _dateColumnTitleCell("試合日"),
      rowsTitleBuilder: (row) => rowTitleList[row]
    );
  }
}
