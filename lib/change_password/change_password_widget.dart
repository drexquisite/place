import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ChangePasswordWidget extends StatefulWidget {
  ChangePasswordWidget({Key key}) : super(key: key);

  @override
  _ChangePasswordWidgetState createState() => _ChangePasswordWidgetState();
}

class _ChangePasswordWidgetState extends State<ChangePasswordWidget> {
  TextEditingController emailTextController;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailTextController = TextEditingController();
  }

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
          List<UsersRecord> changePasswordUsersRecordList = snapshot.data;
          // Customize what your widget looks like with no query results.
          if (snapshot.data.isEmpty) {
            return Container(
              height: 100,
              child: Center(
                child: Text('No results.'),
              ),
            );
          }
          final changePasswordUsersRecord = changePasswordUsersRecordList.first;
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
                'Change Password',
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
                    height: 200,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.primaryBlack,
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(2, 0, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(16, 12, 0, 0),
                            child: Text(
                              'Enter your email and we will send a reset password link to your email for you to update it.',
                              style: FlutterFlowTheme.bodyText2.override(
                                fontFamily: 'Lato',
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
                            child: TextFormField(
                              controller: emailTextController,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Email address here...',
                                labelStyle: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Lato',
                                ),
                                hintText:
                                    'We will send a link to your email...',
                                hintStyle: FlutterFlowTheme.bodyText1.override(
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
                                  return 'Please fill in a new password..';
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
                                      if (!formKey.currentState.validate()) {
                                        return;
                                      }
                                      Navigator.pop(context);
                                      if (emailTextController.text.isEmpty) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              'Email required!',
                                            ),
                                          ),
                                        );
                                        return;
                                      }
                                      await resetPassword(
                                        email: emailTextController.text,
                                        context: context,
                                      );
                                    },
                                    text: 'Send Link',
                                    options: FFButtonOptions(
                                      width: 230,
                                      height: 50,
                                      color: FlutterFlowTheme.primaryColor,
                                      textStyle:
                                          FlutterFlowTheme.subtitle2.override(
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
