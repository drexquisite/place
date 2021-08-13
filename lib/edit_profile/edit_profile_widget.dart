import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class EditProfileWidget extends StatefulWidget {
  EditProfileWidget({
    Key key,
    this.displayName,
    this.email,
  }) : super(key: key);

  final UsersRecord displayName;
  final UsersRecord email;

  @override
  _EditProfileWidgetState createState() => _EditProfileWidgetState();
}

class _EditProfileWidgetState extends State<EditProfileWidget> {
  TextEditingController textController1;
  TextEditingController textController2;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: AutovalidateMode.always,
      child: StreamBuilder<List<UsersRecord>>(
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
          List<UsersRecord> editProfileUsersRecordList = snapshot.data;
          // Customize what your widget looks like with no query results.
          if (snapshot.data.isEmpty) {
            return Container(
              height: 100,
              child: Center(
                child: Text('No results.'),
              ),
            );
          }
          final editProfileUsersRecord = editProfileUsersRecordList.first;
          return Scaffold(
            key: scaffoldKey,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.primaryColor,
              automaticallyImplyLeading: false,
              leading: IconButton(
                onPressed: () async {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.chevron_left_rounded,
                  color: FlutterFlowTheme.white,
                  size: 30,
                ),
                iconSize: 30,
              ),
              title: Text(
                'Edit Profile',
                style: FlutterFlowTheme.title2.override(
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
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 250,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.primaryBlack,
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(2, 0, 0, 0),
                      child: StreamBuilder<UsersRecord>(
                        stream: UsersRecord.getDocument(currentUserReference),
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
                          final columnUsersRecord = snapshot.data;
                          return Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(16, 12, 0, 0),
                                child: Text(
                                  'Update Account Information',
                                  style: FlutterFlowTheme.bodyText2.override(
                                    fontFamily: 'Lato',
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
                                child: TextFormField(
                                  controller: textController1 ??=
                                      TextEditingController(
                                    text: editProfileUsersRecord.displayName,
                                  ),
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Full Name',
                                    labelStyle:
                                        FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Lato',
                                    ),
                                    hintText: 'Your email...',
                                    hintStyle:
                                        FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Lato',
                                      color: Color(0x9AFFFFFF),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.darkBG,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.darkBG,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    filled: true,
                                    fillColor: FlutterFlowTheme.darkBG,
                                    prefixIcon: Icon(
                                      Icons.person_rounded,
                                      color: FlutterFlowTheme.tertiaryColor,
                                    ),
                                  ),
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Lato',
                                  ),
                                  validator: (val) {
                                    if (val.isEmpty) {
                                      return 'Please fill in a valid email address...';
                                    }

                                    return null;
                                  },
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
                                child: TextFormField(
                                  controller: textController2 ??=
                                      TextEditingController(
                                    text: editProfileUsersRecord.email,
                                  ),
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Email Address',
                                    labelStyle:
                                        FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Lato',
                                    ),
                                    hintText: 'Your email...',
                                    hintStyle:
                                        FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Lato',
                                      color: Color(0x9AFFFFFF),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.darkBG,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.darkBG,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    filled: true,
                                    fillColor: FlutterFlowTheme.darkBG,
                                    prefixIcon: Icon(
                                      Icons.email_outlined,
                                      color: FlutterFlowTheme.tertiaryColor,
                                    ),
                                  ),
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Lato',
                                  ),
                                  keyboardType: TextInputType.emailAddress,
                                  validator: (val) {
                                    if (val.isEmpty) {
                                      return 'Please fill in a valid email address...';
                                    }

                                    return null;
                                  },
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(0, 0, 0, 16),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          if (!formKey.currentState
                                              .validate()) {
                                            return;
                                          }
                                          Navigator.pop(context);
                                          final usersUpdateData =
                                              createUsersRecordData(
                                            displayName:
                                                textController1?.text ?? '',
                                            email: textController2?.text ?? '',
                                          );
                                          await editProfileUsersRecord.reference
                                              .update(usersUpdateData);
                                        },
                                        text: 'Save Changes',
                                        options: FFButtonOptions(
                                          width: 230,
                                          height: 50,
                                          color: FlutterFlowTheme.primaryColor,
                                          textStyle: FlutterFlowTheme.subtitle2
                                              .override(
                                            fontFamily: 'Lato',
                                            color: FlutterFlowTheme.white,
                                          ),
                                          elevation: 3,
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1,
                                          ),
                                          borderRadius: 8,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
