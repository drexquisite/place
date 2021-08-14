import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../change_password/change_password_widget.dart';
import '../edit_profile/edit_profile_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../splash_screen/splash_screen_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class MyProfileWidget extends StatefulWidget {
  MyProfileWidget({
    Key key,
    this.displayName,
  }) : super(key: key);

  final UsersRecord displayName;

  @override
  _MyProfileWidgetState createState() => _MyProfileWidgetState();
}

class _MyProfileWidgetState extends State<MyProfileWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<UsersRecord>>(
      stream: queryUsersRecord(
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 15,
              height: 15,
              child: SpinKitWanderingCubes(
                color: Color(0xFF9F68E4),
                size: 15,
              ),
            ),
          );
        }
        List<UsersRecord> myProfileUsersRecordList = snapshot.data;
        // Customize what your widget looks like with no query results.
        if (snapshot.data.isEmpty) {
          return Container(
            height: 100,
            child: Center(
              child: Text('No results.'),
            ),
          );
        }
        final myProfileUsersRecord = myProfileUsersRecordList.first;
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.primaryColor,
            automaticallyImplyLeading: false,
            title: Text(
              'Welcome',
              style: FlutterFlowTheme.title1.override(
                fontFamily: 'Lato',
              ),
            ),
            actions: [],
            centerTitle: false,
            elevation: 0,
          ),
          backgroundColor: FlutterFlowTheme.darkBG,
          body: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 40,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.primaryColor,
                        border: Border.all(
                          color: FlutterFlowTheme.primaryColor,
                          width: 1,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                        child: StreamBuilder<List<UsersRecord>>(
                          stream: queryUsersRecord(
                            queryBuilder: (usersRecord) => usersRecord.where(
                                'FullName',
                                isEqualTo: widget.displayName.fullName),
                            singleRecord: true,
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 15,
                                  height: 15,
                                  child: SpinKitWanderingCubes(
                                    color: Color(0xFF9F68E4),
                                    size: 15,
                                  ),
                                ),
                              );
                            }
                            List<UsersRecord> textUsersRecordList =
                                snapshot.data;
                            // Customize what your widget looks like with no query results.
                            if (snapshot.data.isEmpty) {
                              return Container(
                                height: 100,
                                child: Center(
                                  child: Text('No results.'),
                                ),
                              );
                            }
                            final textUsersRecord = textUsersRecordList.first;
                            return Text(
                              currentUserDisplayName,
                              style: FlutterFlowTheme.subtitle1.override(
                                fontFamily: 'Lato',
                                color: FlutterFlowTheme.primaryBlack,
                              ),
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 162,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.primaryBlack,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(16, 12, 0, 0),
                        child: Text(
                          'Account Information',
                          style: FlutterFlowTheme.bodyText2.override(
                            fontFamily: 'Lato',
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 16, 0, 8),
                        child: InkWell(
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EditProfileWidget(
                                  displayName: myProfileUsersRecord,
                                  email: myProfileUsersRecord,
                                ),
                              ),
                            );
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(16, 8, 0, 16),
                                  child: Text(
                                    'Edit Profile',
                                    style: FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Lato',
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 12, 8),
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: FlutterFlowTheme.tertiaryColor,
                                  size: 24,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        height: 2,
                        thickness: 1,
                        indent: 0,
                        endIndent: 0,
                        color: Color(0xFF434D5A),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 16, 0, 8),
                        child: InkWell(
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ChangePasswordWidget(),
                              ),
                            );
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(16, 8, 0, 16),
                                  child: Text(
                                    'Change Password',
                                    style: FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Lato',
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 12, 8),
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: FlutterFlowTheme.tertiaryColor,
                                  size: 24,
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 24),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 16),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  await Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.bottomToTop,
                                      duration: Duration(milliseconds: 250),
                                      reverseDuration:
                                          Duration(milliseconds: 250),
                                      child: SplashScreenWidget(),
                                    ),
                                  );
                                  await signOut();
                                },
                                text: 'Log Out',
                                options: FFButtonOptions(
                                  width: 130,
                                  height: 50,
                                  color: FlutterFlowTheme.primaryBlack,
                                  textStyle:
                                      FlutterFlowTheme.subtitle2.override(
                                    fontFamily: 'Lato',
                                    color: FlutterFlowTheme.primaryColor,
                                  ),
                                  elevation: 3,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1,
                                  ),
                                  borderRadius: 8,
                                ),
                              ),
                            ),
                            Text(
                              'App Version v0.0',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.bodyText2.override(
                                fontFamily: 'Lato',
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
