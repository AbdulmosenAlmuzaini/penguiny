import '/backend/backend.dart';
import '/chemistry/congratulations_chemistry/congratulations_chemistry_widget.dart';
import '/chemistry/gameover_chemistry/gameover_chemistry_widget.dart';
import '/chemistry/time_end_chemistry/time_end_chemistry_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'chemistry4_model.dart';
export 'chemistry4_model.dart';

class Chemistry4Widget extends StatefulWidget {
  const Chemistry4Widget({super.key});

  static String routeName = 'chemistry4';
  static String routePath = '/chemistry4';

  @override
  State<Chemistry4Widget> createState() => _Chemistry4WidgetState();
}

class _Chemistry4WidgetState extends State<Chemistry4Widget> {
  late Chemistry4Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Chemistry4Model());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.timerController.onStartTimer();
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFFFC9EB),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 20.0, 10.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          height: 34.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18.0),
                            border: Border.all(
                              color: Color(0xFFBC2E5F),
                              width: 1.5,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 2.0, 10.0, 2.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Icon(
                                  Icons.timer_sharp,
                                  color: Color(0xFFD5678E),
                                  size: 25.0,
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      2.0, 0.0, 0.0, 0.0),
                                  child: FlutterFlowTimer(
                                    initialTime: _model.timerInitialTimeMs,
                                    getDisplayTime: (value) =>
                                        StopWatchTimer.getDisplayTime(
                                      value,
                                      hours: false,
                                      milliSecond: false,
                                    ),
                                    controller: _model.timerController,
                                    updateStateInterval:
                                        Duration(milliseconds: 1000),
                                    onChanged:
                                        (value, displayTime, shouldUpdate) {
                                      _model.timerMilliseconds = value;
                                      _model.timerValue = displayTime;
                                      if (shouldUpdate) safeSetState(() {});
                                    },
                                    onEnded: () async {
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Color(0xFFFFC9C9),
                                        isDismissible: false,
                                        enableDrag: false,
                                        context: context,
                                        builder: (context) {
                                          return GestureDetector(
                                            onTap: () {
                                              FocusScope.of(context).unfocus();
                                              FocusManager.instance.primaryFocus
                                                  ?.unfocus();
                                            },
                                            child: Padding(
                                              padding: MediaQuery.viewInsetsOf(
                                                  context),
                                              child: TimeEndChemistryWidget(),
                                            ),
                                          );
                                        },
                                      ).then((value) => safeSetState(() {}));
                                    },
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .override(
                                          font: GoogleFonts.interTight(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .headlineSmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .headlineSmall
                                                    .fontStyle,
                                          ),
                                          color: Color(0xFFD5678E),
                                          fontSize: 20.0,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .headlineSmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .headlineSmall
                                                  .fontStyle,
                                        ),
                                  ),
                                ),
                              ].divide(SizedBox(width: 3.0)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(150.0, 0.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          if (_model.lives! >= 3 ? true : false)
                            Icon(
                              Icons.favorite_rounded,
                              color: Color(0xFFBC2E5F),
                              size: 25.0,
                            ),
                          if (_model.lives! >= 2 ? true : false)
                            Icon(
                              Icons.favorite_rounded,
                              color: Color(0xFFBC2E5F),
                              size: 25.0,
                            ),
                          if (_model.lives! >= 1 ? true : false)
                            Icon(
                              Icons.favorite_rounded,
                              color: Color(0xFFBC2E5F),
                              size: 25.0,
                            ),
                        ],
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.goNamed(
                          ChemistrypageWidget.routeName,
                          extra: <String, dynamic>{
                            '__transition_info__': TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 0),
                            ),
                          },
                        );
                      },
                      child: Icon(
                        Icons.exit_to_app_rounded,
                        color: Color(0xFFBC2E5F),
                        size: 25.0,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 66.2,
                decoration: BoxDecoration(
                  color: Color(0xFFFFC9EB),
                ),
              ),
              StreamBuilder<List<Qchemistry4Record>>(
                stream: queryQchemistry4Record(
                  queryBuilder: (qchemistry4Record) =>
                      qchemistry4Record.orderBy('Q_number'),
                  limit: 10,
                ),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50.0,
                        height: 50.0,
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                            FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                      ),
                    );
                  }
                  List<Qchemistry4Record> containerQchemistry4RecordList =
                      snapshot.data!;

                  return Container(
                    width: double.infinity,
                    height: 699.84,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFD5F2),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        LinearPercentIndicator(
                          percent: (_model.score!) /
                              containerQchemistry4RecordList.length,
                          width: 390.0,
                          lineHeight: 15.0,
                          animation: true,
                          animateFromLastPercent: true,
                          progressColor: Color(0xFFBC2E5F),
                          backgroundColor: Color(0xFFFFC9EB),
                          barRadius: Radius.circular(20.0),
                          padding: EdgeInsets.zero,
                        ),
                        Expanded(
                          child: Builder(
                            builder: (context) {
                              final databaseitems =
                                  containerQchemistry4RecordList.toList();

                              return Container(
                                width: double.infinity,
                                height: 500.0,
                                child: Stack(
                                  children: [
                                    PageView.builder(
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      controller: _model.pageViewController ??=
                                          PageController(
                                              initialPage: max(
                                                  0,
                                                  min(
                                                      0,
                                                      databaseitems.length -
                                                          1))),
                                      scrollDirection: Axis.horizontal,
                                      itemCount: databaseitems.length,
                                      itemBuilder:
                                          (context, databaseitemsIndex) {
                                        final databaseitemsItem =
                                            databaseitems[databaseitemsIndex];
                                        return Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.chevron_left_rounded,
                                                  color: Color(0xFFBC2E5F),
                                                  size: 30.0,
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: RichText(
                                                    textScaler:
                                                        MediaQuery.of(context)
                                                            .textScaler,
                                                    text: TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text:
                                                              '${databaseitemsItem.qNumber.toString()}\\10',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .inter(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Color(
                                                                    0xFFBC2E5F),
                                                                fontSize: 20.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        )
                                                      ],
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelMedium
                                                          .override(
                                                            font: GoogleFonts
                                                                .inter(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontStyle,
                                                            ),
                                                            fontSize: 30.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                                Icon(
                                                  Icons.navigate_next_rounded,
                                                  color: Color(0xFFBC2E5F),
                                                  size: 30.0,
                                                ),
                                              ],
                                            ),
                                            Stack(
                                              children: [
                                                if (databaseitemsItem.qType ==
                                                    'img')
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    child: Image.network(
                                                      databaseitemsItem.qImg,
                                                      width: double.infinity,
                                                      height: MediaQuery.sizeOf(
                                                                  context)
                                                              .height *
                                                          0.2,
                                                      fit: BoxFit.contain,
                                                    ),
                                                  ),
                                                if (databaseitemsItem.qType ==
                                                    'text')
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  25.0,
                                                                  16.0,
                                                                  0.0),
                                                      child: Text(
                                                        databaseitemsItem.qText,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              font: GoogleFonts
                                                                  .inter(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                              color: Color(
                                                                  0xFFBC2E5F),
                                                              fontSize: 20.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                              ],
                                            ),
                                            Stack(
                                              children: [
                                                if (databaseitemsItem
                                                        .answerType ==
                                                    'img')
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(5.0, 20.0,
                                                                5.0, 0.0),
                                                    child: Builder(
                                                      builder: (context) {
                                                        final imgItem =
                                                            databaseitemsItem
                                                                .answerOption
                                                                .toList();

                                                        return GridView.builder(
                                                          padding:
                                                              EdgeInsets.zero,
                                                          gridDelegate:
                                                              SliverGridDelegateWithFixedCrossAxisCount(
                                                            crossAxisCount: 2,
                                                            crossAxisSpacing:
                                                                2.0,
                                                            mainAxisSpacing:
                                                                10.0,
                                                            childAspectRatio:
                                                                1.3,
                                                          ),
                                                          shrinkWrap: true,
                                                          scrollDirection:
                                                              Axis.vertical,
                                                          itemCount:
                                                              imgItem.length,
                                                          itemBuilder: (context,
                                                              imgItemIndex) {
                                                            final imgItemItem =
                                                                imgItem[
                                                                    imgItemIndex];
                                                            return Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          5.0,
                                                                          0.0),
                                                              child: InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  _model.selectedanswer =
                                                                      imgItemItem;
                                                                  safeSetState(
                                                                      () {});
                                                                },
                                                                child:
                                                                    Container(
                                                                  width: 250.0,
                                                                  height: 250.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: () {
                                                                      if (_model
                                                                              .color ==
                                                                          1) {
                                                                        return (_model.selectedanswer ==
                                                                                imgItemItem
                                                                            ? Color(0xFF549C4F)
                                                                            : Color(0xFFFFC9EB));
                                                                      } else if (_model
                                                                              .color ==
                                                                          2) {
                                                                        return (_model.selectedanswer ==
                                                                                imgItemItem
                                                                            ? Color(0xDEC52123)
                                                                            : Color(0xFFFFC9EB));
                                                                      } else {
                                                                        return Color(
                                                                            0xFFFFC9EB);
                                                                      }
                                                                    }(),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: _model.selectedanswer != null &&
                                                                              _model.selectedanswer !=
                                                                                  ''
                                                                          ? (_model.selectedanswer == imgItemItem
                                                                              ? Color(0xFFD5678E)
                                                                              : Color(0x000FFCEB))
                                                                          : Color(0xFFD5678E),
                                                                      width:
                                                                          1.5,
                                                                    ),
                                                                  ),
                                                                  child: Stack(
                                                                    children: [
                                                                      Align(
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(0.0),
                                                                          child:
                                                                              Image.network(
                                                                            databaseitemsItem.answerImg.elementAtOrNull(imgItemIndex)!,
                                                                            width:
                                                                                200.0,
                                                                            height:
                                                                                200.0,
                                                                            fit:
                                                                                BoxFit.contain,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Text(
                                                                        imgItemItem,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              font: GoogleFonts.inter(
                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                              color: Color(0x0014181B),
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                if (databaseitemsItem
                                                        .answerType ==
                                                    'text')
                                                  Builder(
                                                    builder: (context) {
                                                      final textItem =
                                                          databaseitemsItem
                                                              .answerText
                                                              .toList();

                                                      return ListView.builder(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        shrinkWrap: true,
                                                        scrollDirection:
                                                            Axis.vertical,
                                                        itemCount:
                                                            textItem.length,
                                                        itemBuilder: (context,
                                                            textItemIndex) {
                                                          final textItemItem =
                                                              textItem[
                                                                  textItemIndex];
                                                          return Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          30.0,
                                                                          0.0,
                                                                          0.0),
                                                              child:
                                                                  FFButtonWidget(
                                                                onPressed:
                                                                    () async {
                                                                  _model.selectedanswer =
                                                                      textItemItem;
                                                                  safeSetState(
                                                                      () {});
                                                                },
                                                                text:
                                                                    textItemItem,
                                                                options:
                                                                    FFButtonOptions(
                                                                  width: 300.0,
                                                                  height: 40.0,
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          16.0,
                                                                          0.0),
                                                                  iconPadding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  color: () {
                                                                    if (_model
                                                                            .color ==
                                                                        1) {
                                                                      return (_model.selectedanswer ==
                                                                              textItemItem
                                                                          ? Color(
                                                                              0xFF549C4F)
                                                                          : Color(
                                                                              0xFFFFC9EB));
                                                                    } else if (_model
                                                                            .color ==
                                                                        2) {
                                                                      return (_model.selectedanswer ==
                                                                              textItemItem
                                                                          ? Color(
                                                                              0xDEC52123)
                                                                          : Color(
                                                                              0xFFFFC9EB));
                                                                    } else {
                                                                      return Color(
                                                                          0xFFFFC9EB);
                                                                    }
                                                                  }(),
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .interTight(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .fontStyle,
                                                                        ),
                                                                        color: Color(
                                                                            0xFFBC2E5F),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontStyle,
                                                                      ),
                                                                  elevation:
                                                                      0.0,
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: _model.selectedanswer !=
                                                                                null &&
                                                                            _model.selectedanswer !=
                                                                                ''
                                                                        ? (_model.selectedanswer ==
                                                                                textItemItem
                                                                            ? Color(
                                                                                0xFFD5678E)
                                                                            : Color(
                                                                                0x000FFCEB))
                                                                        : Color(
                                                                            0xFFD5678E),
                                                                    width: 1.5,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    },
                                                  ),
                                              ],
                                            ),
                                            Stack(
                                              children: [
                                                if (databaseitemsItem
                                                        .answerType ==
                                                    'img')
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  20.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: FFButtonWidget(
                                                        onPressed: () async {
                                                          if (_model.selectedanswer !=
                                                                  null &&
                                                              _model.selectedanswer !=
                                                                  '') {
                                                            _model.totalQ =
                                                                _model.totalQ! +
                                                                    1;
                                                            safeSetState(() {});
                                                            _model
                                                                .iscorrect = _model
                                                                    .selectedanswer ==
                                                                databaseitemsItem
                                                                    .correctOption;
                                                            safeSetState(() {});
                                                            if (_model
                                                                .iscorrect!) {
                                                              _model.score =
                                                                  _model.score! +
                                                                      1;
                                                              safeSetState(
                                                                  () {});
                                                              _model.color = 1;
                                                              safeSetState(
                                                                  () {});
                                                            } else {
                                                              _model.color = 2;
                                                              safeSetState(
                                                                  () {});
                                                              _model.lives =
                                                                  _model.lives! +
                                                                      -1;
                                                              safeSetState(
                                                                  () {});
                                                              if (_model
                                                                      .lives ==
                                                                  0) {
                                                                _model
                                                                    .timerController
                                                                    .onStopTimer();
                                                                await showModalBottomSheet(
                                                                  isScrollControlled:
                                                                      true,
                                                                  backgroundColor:
                                                                      Color(
                                                                          0xFFFFD7F1),
                                                                  barrierColor:
                                                                      Colors
                                                                          .transparent,
                                                                  isDismissible:
                                                                      false,
                                                                  enableDrag:
                                                                      false,
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (context) {
                                                                    return GestureDetector(
                                                                      onTap:
                                                                          () {
                                                                        FocusScope.of(context)
                                                                            .unfocus();
                                                                        FocusManager
                                                                            .instance
                                                                            .primaryFocus
                                                                            ?.unfocus();
                                                                      },
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            MediaQuery.viewInsetsOf(context),
                                                                        child:
                                                                            GameoverChemistryWidget(
                                                                          videoURL:
                                                                              'https://youtu.be/wSO9GVfJMdE?si=5cjwCrAFaU8yt_Nv',
                                                                        ),
                                                                      ),
                                                                    );
                                                                  },
                                                                ).then((value) =>
                                                                    safeSetState(
                                                                        () {}));

                                                                _model.lives =
                                                                    3;
                                                                _model.score =
                                                                    0;
                                                                safeSetState(
                                                                    () {});

                                                                context.goNamed(
                                                                  ChemistrypageWidget
                                                                      .routeName,
                                                                  extra: <String,
                                                                      dynamic>{
                                                                    '__transition_info__':
                                                                        TransitionInfo(
                                                                      hasTransition:
                                                                          true,
                                                                      transitionType:
                                                                          PageTransitionType
                                                                              .fade,
                                                                      duration: Duration(
                                                                          milliseconds:
                                                                              0),
                                                                    ),
                                                                  },
                                                                );
                                                              }
                                                            }

                                                            await Future
                                                                .delayed(
                                                              Duration(
                                                                milliseconds:
                                                                    800,
                                                              ),
                                                            );
                                                            await _model
                                                                .pageViewController
                                                                ?.nextPage(
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      300),
                                                              curve:
                                                                  Curves.ease,
                                                            );
                                                            _model.color = 0;
                                                            _model.selectedanswer =
                                                                null;
                                                            safeSetState(() {});
                                                            if (_model.totalQ ==
                                                                10) {
                                                              _model
                                                                  .timerController
                                                                  .onStopTimer();
                                                              await showModalBottomSheet(
                                                                isScrollControlled:
                                                                    true,
                                                                backgroundColor:
                                                                    Color(
                                                                        0xFFFFD7F1),
                                                                isDismissible:
                                                                    false,
                                                                enableDrag:
                                                                    false,
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (context) {
                                                                  return GestureDetector(
                                                                    onTap: () {
                                                                      FocusScope.of(
                                                                              context)
                                                                          .unfocus();
                                                                      FocusManager
                                                                          .instance
                                                                          .primaryFocus
                                                                          ?.unfocus();
                                                                    },
                                                                    child:
                                                                        Padding(
                                                                      padding: MediaQuery
                                                                          .viewInsetsOf(
                                                                              context),
                                                                      child:
                                                                          CongratulationsChemistryWidget(
                                                                        addPoint:
                                                                            () async {
                                                                          if (FFAppState().ChemistryPoints ==
                                                                              3) {
                                                                            FFAppState().ChemistryPoints =
                                                                                FFAppState().ChemistryPoints + 1;
                                                                            safeSetState(() {});
                                                                          }
                                                                        },
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                              ).then((value) =>
                                                                  safeSetState(
                                                                      () {}));

                                                              if (_model
                                                                      .lives ==
                                                                  3) {
                                                                FFAppState()
                                                                    .chemistry4 = 3;
                                                                safeSetState(
                                                                    () {});
                                                              }
                                                              if (_model
                                                                      .lives ==
                                                                  2) {
                                                                FFAppState()
                                                                    .chemistry4 = 2;
                                                                safeSetState(
                                                                    () {});
                                                              }
                                                              if (_model
                                                                      .lives ==
                                                                  1) {
                                                                FFAppState()
                                                                    .chemistry4 = 1;
                                                                safeSetState(
                                                                    () {});
                                                              }
                                                            } else {
                                                              safeSetState(
                                                                  () {});
                                                            }
                                                          } else {
                                                            ScaffoldMessenger
                                                                    .of(context)
                                                                .showSnackBar(
                                                              SnackBar(
                                                                content: Text(
                                                                  'اختر اجابة',
                                                                  style:
                                                                      TextStyle(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                  ),
                                                                ),
                                                                duration: Duration(
                                                                    milliseconds:
                                                                        4000),
                                                                backgroundColor:
                                                                    Color(
                                                                        0xFFBC2E5F),
                                                              ),
                                                            );
                                                          }
                                                        },
                                                        text: 'حفظ الإجابة',
                                                        options:
                                                            FFButtonOptions(
                                                          width: 100.0,
                                                          height: 40.0,
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16.0,
                                                                      0.0,
                                                                      16.0,
                                                                      0.0),
                                                          iconPadding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          color:
                                                              Color(0xFFBC2E5F),
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .interTight(
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .fontStyle,
                                                                    ),
                                                                    color: Colors
                                                                        .white,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .fontStyle,
                                                                  ),
                                                          elevation: 0.0,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                if (databaseitemsItem
                                                        .answerType ==
                                                    'text')
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  20.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: FFButtonWidget(
                                                        onPressed: () async {
                                                          if (_model.selectedanswer !=
                                                                  null &&
                                                              _model.selectedanswer !=
                                                                  '') {
                                                            _model.totalQ =
                                                                _model.totalQ! +
                                                                    1;
                                                            safeSetState(() {});
                                                            _model
                                                                .iscorrect = _model
                                                                    .selectedanswer ==
                                                                databaseitemsItem
                                                                    .correctAnswer;
                                                            safeSetState(() {});
                                                            if (_model
                                                                .iscorrect!) {
                                                              _model.score =
                                                                  _model.score! +
                                                                      1;
                                                              safeSetState(
                                                                  () {});
                                                              _model.color = 1;
                                                              safeSetState(
                                                                  () {});
                                                            } else {
                                                              _model.color = 2;
                                                              safeSetState(
                                                                  () {});
                                                              _model.lives =
                                                                  _model.lives! +
                                                                      -1;
                                                              safeSetState(
                                                                  () {});
                                                              if (_model
                                                                      .lives ==
                                                                  0) {
                                                                _model
                                                                    .timerController
                                                                    .onStopTimer();
                                                                await showModalBottomSheet(
                                                                  isScrollControlled:
                                                                      true,
                                                                  backgroundColor:
                                                                      Color(
                                                                          0xFFFFD7F1),
                                                                  barrierColor:
                                                                      Colors
                                                                          .transparent,
                                                                  isDismissible:
                                                                      false,
                                                                  enableDrag:
                                                                      false,
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (context) {
                                                                    return GestureDetector(
                                                                      onTap:
                                                                          () {
                                                                        FocusScope.of(context)
                                                                            .unfocus();
                                                                        FocusManager
                                                                            .instance
                                                                            .primaryFocus
                                                                            ?.unfocus();
                                                                      },
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            MediaQuery.viewInsetsOf(context),
                                                                        child:
                                                                            GameoverChemistryWidget(
                                                                          videoURL:
                                                                              'https://youtu.be/wSO9GVfJMdE?si=5cjwCrAFaU8yt_Nv',
                                                                        ),
                                                                      ),
                                                                    );
                                                                  },
                                                                ).then((value) =>
                                                                    safeSetState(
                                                                        () {}));

                                                                _model.lives =
                                                                    3;
                                                                _model.score =
                                                                    0;
                                                                safeSetState(
                                                                    () {});

                                                                context.goNamed(
                                                                  ChemistrypageWidget
                                                                      .routeName,
                                                                  extra: <String,
                                                                      dynamic>{
                                                                    '__transition_info__':
                                                                        TransitionInfo(
                                                                      hasTransition:
                                                                          true,
                                                                      transitionType:
                                                                          PageTransitionType
                                                                              .fade,
                                                                      duration: Duration(
                                                                          milliseconds:
                                                                              0),
                                                                    ),
                                                                  },
                                                                );
                                                              }
                                                            }

                                                            await Future
                                                                .delayed(
                                                              Duration(
                                                                milliseconds:
                                                                    800,
                                                              ),
                                                            );
                                                            await _model
                                                                .pageViewController
                                                                ?.nextPage(
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      300),
                                                              curve:
                                                                  Curves.ease,
                                                            );
                                                            _model.color = 0;
                                                            _model.selectedanswer =
                                                                null;
                                                            safeSetState(() {});
                                                            if (_model.totalQ ==
                                                                10) {
                                                              _model
                                                                  .timerController
                                                                  .onStopTimer();
                                                              await showModalBottomSheet(
                                                                isScrollControlled:
                                                                    true,
                                                                backgroundColor:
                                                                    Color(
                                                                        0xFFFFD7F1),
                                                                isDismissible:
                                                                    false,
                                                                enableDrag:
                                                                    false,
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (context) {
                                                                  return GestureDetector(
                                                                    onTap: () {
                                                                      FocusScope.of(
                                                                              context)
                                                                          .unfocus();
                                                                      FocusManager
                                                                          .instance
                                                                          .primaryFocus
                                                                          ?.unfocus();
                                                                    },
                                                                    child:
                                                                        Padding(
                                                                      padding: MediaQuery
                                                                          .viewInsetsOf(
                                                                              context),
                                                                      child:
                                                                          CongratulationsChemistryWidget(
                                                                        addPoint:
                                                                            () async {
                                                                          if (FFAppState().ChemistryPoints ==
                                                                              3) {
                                                                            FFAppState().ChemistryPoints =
                                                                                FFAppState().ChemistryPoints + 1;
                                                                            safeSetState(() {});
                                                                          }
                                                                        },
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                              ).then((value) =>
                                                                  safeSetState(
                                                                      () {}));

                                                              if (_model
                                                                      .lives ==
                                                                  3) {
                                                                FFAppState()
                                                                    .chemistry4 = 3;
                                                                safeSetState(
                                                                    () {});
                                                              }
                                                              if (_model
                                                                      .lives ==
                                                                  2) {
                                                                FFAppState()
                                                                    .chemistry4 = 2;
                                                                safeSetState(
                                                                    () {});
                                                              }
                                                              if (_model
                                                                      .lives ==
                                                                  1) {
                                                                FFAppState()
                                                                    .chemistry4 = 1;
                                                                safeSetState(
                                                                    () {});
                                                              }
                                                            }
                                                          } else {
                                                            ScaffoldMessenger
                                                                    .of(context)
                                                                .showSnackBar(
                                                              SnackBar(
                                                                content: Text(
                                                                  'اختر اجابة',
                                                                  style:
                                                                      TextStyle(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                  ),
                                                                ),
                                                                duration: Duration(
                                                                    milliseconds:
                                                                        4000),
                                                                backgroundColor:
                                                                    Color(
                                                                        0xFFBC2E5F),
                                                              ),
                                                            );
                                                          }
                                                        },
                                                        text: 'حفظ الإجابة',
                                                        options:
                                                            FFButtonOptions(
                                                          width: 100.0,
                                                          height: 40.0,
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16.0,
                                                                      0.0,
                                                                      16.0,
                                                                      0.0),
                                                          iconPadding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          color:
                                                              Color(0xFFBC2E5F),
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .interTight(
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .fontStyle,
                                                                    ),
                                                                    color: Colors
                                                                        .white,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .fontStyle,
                                                                  ),
                                                          elevation: 0.0,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          ],
                                        );
                                      },
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 1.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 16.0),
                                        child: smooth_page_indicator
                                            .SmoothPageIndicator(
                                          controller: _model
                                                  .pageViewController ??=
                                              PageController(
                                                  initialPage: max(
                                                      0,
                                                      min(
                                                          0,
                                                          databaseitems.length -
                                                              1))),
                                          count: databaseitems.length,
                                          axisDirection: Axis.horizontal,
                                          onDotClicked: (i) async {
                                            await _model.pageViewController!
                                                .animateToPage(
                                              i,
                                              duration:
                                                  Duration(milliseconds: 500),
                                              curve: Curves.ease,
                                            );
                                            safeSetState(() {});
                                          },
                                          effect:
                                              smooth_page_indicator.SlideEffect(
                                            spacing: 8.0,
                                            radius: 8.0,
                                            dotWidth: 8.0,
                                            dotHeight: 8.0,
                                            dotColor: Color(0x004B39EF),
                                            activeDotColor: Color(0x004B39EF),
                                            paintStyle: PaintingStyle.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
