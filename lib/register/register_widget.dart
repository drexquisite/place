import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../login/login_widget.dart';
import '../selection_screen/selection_screen_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterWidget extends StatefulWidget {
  const RegisterWidget({Key key}) : super(key: key);

  @override
  _RegisterWidgetState createState() => _RegisterWidgetState();
}

class _RegisterWidgetState extends State<RegisterWidget> {
  TextEditingController confirmPasswordFieldRegisterController;
  bool confirmPasswordFieldRegisterVisibility;
  TextEditingController emailFieldRegisterController;
  TextEditingController fullNameFieldRegisterController;
  TextEditingController passwordFieldRegisterController;
  bool passwordFieldRegisterVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    confirmPasswordFieldRegisterController = TextEditingController();
    confirmPasswordFieldRegisterVisibility = false;
    emailFieldRegisterController = TextEditingController();
    fullNameFieldRegisterController = TextEditingController();
    passwordFieldRegisterController = TextEditingController();
    passwordFieldRegisterVisibility = false;
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
                  color: FlutterFlowTheme.of(context).white,
                ),
                child: Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Text(
                    'P L A C E',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lato',
                          color: Colors.black,
                          fontSize: 35,
                          fontWeight: FontWeight.w300,
                        ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 36),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          TextFormField(
                            controller: fullNameFieldRegisterController,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Full Name',
                              hintText: 'Enter your name here...',
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
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w300,
                                    ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                            child: TextFormField(
                              controller: emailFieldRegisterController,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Email Address',
                                hintText: 'Enter your email here...',
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
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w300,
                                  ),
                              keyboardType: TextInputType.emailAddress,
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                            child: TextFormField(
                              controller: passwordFieldRegisterController,
                              obscureText: !passwordFieldRegisterVisibility,
                              decoration: InputDecoration(
                                labelText: 'Password',
                                hintText: 'Enter your password here...',
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
                                    () => passwordFieldRegisterVisibility =
                                        !passwordFieldRegisterVisibility,
                                  ),
                                  focusNode: FocusNode(skipTraversal: true),
                                  child: Icon(
                                    passwordFieldRegisterVisibility
                                        ? Icons.visibility_outlined
                                        : Icons.visibility_off_outlined,
                                    color: Color(0x80FFFFFF),
                                    size: 22,
                                  ),
                                ),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w300,
                                  ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                            child: TextFormField(
                              controller:
                                  confirmPasswordFieldRegisterController,
                              obscureText:
                                  !confirmPasswordFieldRegisterVisibility,
                              decoration: InputDecoration(
                                labelText: 'Confirm Password',
                                hintText: 'Confirm password here...',
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
                                    () => confirmPasswordFieldRegisterVisibility =
                                        !confirmPasswordFieldRegisterVisibility,
                                  ),
                                  focusNode: FocusNode(skipTraversal: true),
                                  child: Icon(
                                    confirmPasswordFieldRegisterVisibility
                                        ? Icons.visibility_outlined
                                        : Icons.visibility_off_outlined,
                                    color: Color(0x80FFFFFF),
                                    size: 22,
                                  ),
                                ),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w300,
                                  ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                if (passwordFieldRegisterController?.text !=
                                    confirmPasswordFieldRegisterController
                                        ?.text) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Passwords don\'t match!',
                                      ),
                                    ),
                                  );
                                  return;
                                }

                                final user = await createAccountWithEmail(
                                  context,
                                  emailFieldRegisterController.text,
                                  passwordFieldRegisterController.text,
                                );
                                if (user == null) {
                                  return;
                                }

                                final usersCreateData = createUsersRecordData(
                                  fullName:
                                      fullNameFieldRegisterController.text,
                                );
                                await UsersRecord.collection
                                    .doc(user.uid)
                                    .update(usersCreateData);

                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        SelectionScreenWidget(),
                                  ),
                                );
                              },
                              text: 'Create Account',
                              options: FFButtonOptions(
                                width: 200,
                                height: 50,
                                color: FlutterFlowTheme.of(context).darkBG,
                                textStyle: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
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
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 6),
                                  child: Text(
                                    'Don’t have an account yet? ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Lato',
                                          color: FlutterFlowTheme.of(context)
                                              .darkBG,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 8, 0, 0),
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
                                      color: FlutterFlowTheme.of(context).white,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
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
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
