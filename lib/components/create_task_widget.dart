import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateTaskWidget extends StatefulWidget {
  const CreateTaskWidget({Key key}) : super(key: key);

  @override
  _CreateTaskWidgetState createState() => _CreateTaskWidgetState();
}

class _CreateTaskWidgetState extends State<CreateTaskWidget> {
  DateTime datePicked;
  TextEditingController textController1;
  TextEditingController textController2;

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 470,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBlack,
          boxShadow: [
            BoxShadow(
              blurRadius: 7,
              color: Color(0x5D000000),
              offset: Offset(0, -2),
            )
          ],
          borderRadius: BorderRadius.circular(0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 20, 16, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Add Task',
                    style: FlutterFlowTheme.of(context).title2,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 4, 16, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Fill out the details below to add a new task.',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lato',
                          color: FlutterFlowTheme.of(context).tertiaryColor,
                        ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
              child: TextFormField(
                controller: textController1,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'Task Name',
                  labelStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Lato',
                        color: FlutterFlowTheme.of(context).tertiaryColor,
                      ),
                  hintText: 'Enter your task here....',
                  hintStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Lato',
                        color: FlutterFlowTheme.of(context).tertiaryColor,
                      ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).darkBG,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).darkBG,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  filled: true,
                  fillColor: FlutterFlowTheme.of(context).darkBG,
                ),
                style: FlutterFlowTheme.of(context).bodyText1,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
              child: TextFormField(
                controller: textController2,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'Details',
                  labelStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Lato',
                        color: FlutterFlowTheme.of(context).tertiaryColor,
                      ),
                  hintText: 'Enter a description here...',
                  hintStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Lato',
                        color: FlutterFlowTheme.of(context).tertiaryColor,
                      ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).darkBG,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).darkBG,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  filled: true,
                  fillColor: FlutterFlowTheme.of(context).darkBG,
                ),
                style: FlutterFlowTheme.of(context).bodyText1,
                textAlign: TextAlign.start,
                maxLines: 3,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
              child: InkWell(
                onTap: () async {
                  await DatePicker.showDatePicker(
                    context,
                    showTitleActions: true,
                    onConfirm: (date) {
                      setState(() => datePicked = date);
                    },
                    currentTime: getCurrentTimestamp,
                    minTime: DateTime(0, 0, 0),
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.92,
                  height: 50,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).darkBG,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).darkBG,
                      width: 1,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 14, 0, 0),
                    child: Text(
                      dateTimeFormat('MMMEd', datePicked),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Lato',
                            color: FlutterFlowTheme.of(context).tertiaryColor,
                          ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FFButtonWidget(
                    onPressed: () async {
                      Navigator.pop(context);
                    },
                    text: 'Cancel',
                    options: FFButtonOptions(
                      width: 130,
                      height: 50,
                      color: FlutterFlowTheme.of(context).primaryBlack,
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Lato',
                                color: Colors.white,
                              ),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: 12,
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: 'Create Task',
                    options: FFButtonOptions(
                      width: 130,
                      height: 50,
                      color: FlutterFlowTheme.of(context).primaryColor,
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Lato',
                                color: Colors.white,
                              ),
                      elevation: 3,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: 8,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
