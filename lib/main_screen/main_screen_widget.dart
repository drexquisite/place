import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({Key key}) : super(key: key);

  @override
  _MainScreenWidgetState createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 1,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 1,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Text(
                            'P L A C E',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Lato',
                                      color: Colors.black,
                                      fontSize: 30,
                                      fontWeight: FontWeight.w300,
                                    ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0, 0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 100, 0, 20),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => NavBarPage(
                                              initialPage: 'ProfileDefault'),
                                        ),
                                      );
                                    },
                                    text: '',
                                    icon: Icon(
                                      Icons.add_business,
                                      size: 40,
                                    ),
                                    options: FFButtonOptions(
                                      width: 100,
                                      height: 90,
                                      color: Color(0xFF8E55DE),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily: 'Lato',
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                      elevation: 3,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 35,
                                      ),
                                      borderRadius: 25,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
