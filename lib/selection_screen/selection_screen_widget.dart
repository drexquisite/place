import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectionScreenWidget extends StatefulWidget {
  const SelectionScreenWidget({Key key}) : super(key: key);

  @override
  _SelectionScreenWidgetState createState() => _SelectionScreenWidgetState();
}

class _SelectionScreenWidgetState extends State<SelectionScreenWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).white,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).white,
                ),
                child: Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 75, 0, 0),
                    child: Text(
                      'Are you?',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Lato',
                            color: Colors.black,
                            fontSize: 35,
                            fontWeight: FontWeight.w300,
                          ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 2,
            decoration: BoxDecoration(),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 45, 0, 0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            final userTypeCreateData = {
                              'isLandLord': [true],
                            };
                            await UserTypeRecord.collection
                                .doc()
                                .set(userTypeCreateData);
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    NavBarPage(initialPage: 'DefaultView'),
                              ),
                            );
                          },
                          text: '',
                          icon: Icon(
                            Icons.home_outlined,
                            color: Color(0xFF8E55DE),
                            size: 70,
                          ),
                          options: FFButtonOptions(
                            width: 75,
                            height: 75,
                            color: Colors.white,
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Lato',
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal,
                                    ),
                            elevation: 0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 45,
                            ),
                            borderRadius: 45,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(55, 0, 0, 80),
                      child: Text(
                        'Renting  \n    Out',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Lato',
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                            ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(65, 45, 0, 0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              final userTypeCreateData = {
                                'isTenant': [true],
                              };
                              await UserTypeRecord.collection
                                  .doc()
                                  .set(userTypeCreateData);
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      NavBarPage(initialPage: 'DefaultView'),
                                ),
                              );
                            },
                            text: '',
                            icon: Icon(
                              Icons.home_work_outlined,
                              color: Color(0xFF8E55DE),
                              size: 70,
                            ),
                            options: FFButtonOptions(
                              width: 75,
                              height: 75,
                              color: Colors.white,
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Lato',
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                  ),
                              elevation: 0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 45,
                              ),
                              borderRadius: 45,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(95, 0, 0, 80),
                        child: Text(
                          'Looking To\n      Rent',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Lato',
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                  ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(0, 200, 120, 0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      NavBarPage(initialPage: 'MainScreen'),
                                ),
                              );
                            },
                            text: '',
                            icon: Icon(
                              Icons.keyboard_backspace,
                              size: 35,
                            ),
                            options: FFButtonOptions(
                              width: 75,
                              height: 75,
                              color: Color(0xFF8E55DE),
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Lato',
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                  ),
                              elevation: 2,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 45,
                              ),
                              borderRadius: 45,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
