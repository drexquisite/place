import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../login/login_widget.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class RegisterWidget extends StatefulWidget {
  RegisterWidget({Key key}) : super(key: key);

  @override
  _RegisterWidgetState createState() => _RegisterWidgetState();
}

class _RegisterWidgetState extends State<RegisterWidget> {
  TextEditingController confirmPassController;
  bool confirmPassVisibility;
  TextEditingController emailController;
  TextEditingController fullNameController;
  TextEditingController passOneController;
  bool passOneVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    confirmPassController = TextEditingController();
    confirmPassVisibility = false;
    emailController = TextEditingController();
    fullNameController = TextEditingController();
    passOneController = TextEditingController();
    passOneVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
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
                  color: FlutterFlowTheme.white,
                ),
                child: Align(
                  alignment: Alignment(0, 0),
                  child: Text(
                    'P L A C E',
                    style: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Lato',
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              )
            ],
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 24, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(24, 0, 24, 36),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          TextFormField(
                            controller: fullNameController,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Full Name',
                              labelStyle: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w300,
                              ),
                              hintText: 'Enter your name here...',
                              hintStyle: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w300,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFF8E55DE),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFF8E55DE),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              filled: true,
                              fillColor: Color(0xFF9F68E4),
                            ),
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w300,
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: TextFormField(
                              controller: emailController,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Email Address',
                                labelStyle: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w300,
                                ),
                                hintText: 'Enter your email here...',
                                hintStyle: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w300,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF8E55DE),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF8E55DE),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                filled: true,
                                fillColor: Color(0xFF9F68E4),
                              ),
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w300,
                              ),
                              keyboardType: TextInputType.emailAddress,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: TextFormField(
                              controller: passOneController,
                              obscureText: !passOneVisibility,
                              decoration: InputDecoration(
                                labelText: 'Password',
                                labelStyle: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w300,
                                ),
                                hintText: 'Enter your password here...',
                                hintStyle: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w300,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF8E55DE),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF8E55DE),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                filled: true,
                                fillColor: Color(0xFF9F68E4),
                                suffixIcon: InkWell(
                                  onTap: () => setState(
                                    () =>
                                        passOneVisibility = !passOneVisibility,
                                  ),
                                  child: Icon(
                                    passOneVisibility
                                        ? Icons.visibility_outlined
                                        : Icons.visibility_off_outlined,
                                    color: Color(0x80FFFFFF),
                                    size: 22,
                                  ),
                                ),
                              ),
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: TextFormField(
                              controller: confirmPassController,
                              obscureText: !confirmPassVisibility,
                              decoration: InputDecoration(
                                labelText: 'Confirm Password',
                                labelStyle: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w300,
                                ),
                                hintText: 'Confirm password here...',
                                hintStyle: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w300,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF8E55DE),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF8E55DE),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                filled: true,
                                fillColor: Color(0xFF9F68E4),
                                suffixIcon: InkWell(
                                  onTap: () => setState(
                                    () => confirmPassVisibility =
                                        !confirmPassVisibility,
                                  ),
                                  child: Icon(
                                    confirmPassVisibility
                                        ? Icons.visibility_outlined
                                        : Icons.visibility_off_outlined,
                                    color: Color(0x80FFFFFF),
                                    size: 22,
                                  ),
                                ),
                              ),
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 24, 0, 0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                if (passOneController.text !=
                                    confirmPassController.text) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        "Passwords don't match!",
                                      ),
                                    ),
                                  );
                                  return;
                                }

                                final user = await createAccountWithEmail(
                                  context,
                                  emailController.text,
                                  passOneController.text,
                                );
                                if (user == null) {
                                  return;
                                }

                                final usersCreateData = createUsersRecordData(
                                  fullName: fullNameController.text,
                                );
                                await UsersRecord.collection
                                    .doc(user.uid)
                                    .update(usersCreateData);

                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        NavBarPage(initialPage: 'MyProfile'),
                                  ),
                                );
                              },
                              text: 'Create Account',
                              options: FFButtonOptions(
                                width: 200,
                                height: 50,
                                color: FlutterFlowTheme.darkBG,
                                textStyle: FlutterFlowTheme.subtitle2.override(
                                  fontFamily: 'Lato',
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
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
                          Expanded(
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 6),
                                  child: Text(
                                    'Don’t have an account yet? ',
                                    style: FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Lato',
                                      color: FlutterFlowTheme.darkBG,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      await Navigator.push(
                                        context,
                                        PageTransition(
                                          type: PageTransitionType.fade,
                                          duration: Duration(milliseconds: 200),
                                          reverseDuration:
                                              Duration(milliseconds: 200),
                                          child: LoginWidget(),
                                        ),
                                      );
                                    },
                                    text: 'Login',
                                    options: FFButtonOptions(
                                      width: 80,
                                      height: 30,
                                      color: FlutterFlowTheme.white,
                                      textStyle:
                                          FlutterFlowTheme.subtitle2.override(
                                        fontFamily: 'Lato',
                                        color: Color(0xFF9F68E4),
                                      ),
                                      elevation: 0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: 50,
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
          )
        ],
      ),
    );
  }
}
