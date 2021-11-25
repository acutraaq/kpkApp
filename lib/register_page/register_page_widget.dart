import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import '../onboarding_page/onboarding_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPageWidget extends StatefulWidget {
  RegisterPageWidget({Key key}) : super(key: key);

  @override
  _RegisterPageWidgetState createState() => _RegisterPageWidgetState();
}

class _RegisterPageWidgetState extends State<RegisterPageWidget> {
  TextEditingController confirmPassFieldController;
  bool confirmPassFieldVisibility;
  TextEditingController emailFieldController;
  TextEditingController passFieldController;
  bool passFieldVisibility;
  bool _loadingButton = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    confirmPassFieldController = TextEditingController();
    confirmPassFieldVisibility = false;
    emailFieldController = TextEditingController();
    passFieldController = TextEditingController();
    passFieldVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.customColor3,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.chevron_left,
            color: FlutterFlowTheme.customColor1,
            size: 30,
          ),
          onPressed: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => OnboardingPageWidget(),
              ),
            );
          },
        ),
        title: Text(
          'Register Account',
          style: FlutterFlowTheme.title1.override(
            fontFamily: 'Open Sans',
            color: FlutterFlowTheme.customColor1,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Color(0xFFD0CAEA),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 1,
          decoration: BoxDecoration(
            color: Color(0x00EEEEEE),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(40, 150, 40, 0),
                  child: TextFormField(
                    controller: emailFieldController,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Open Sans',
                        color: Color(0x80FFFFFF),
                        fontWeight: FontWeight.normal,
                      ),
                      hintText: 'Please enter your email...',
                      hintStyle: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Open Sans',
                        color: Color(0x80FFFFFF),
                        fontWeight: FontWeight.normal,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      filled: true,
                      fillColor: Color(0x41343333),
                    ),
                    style: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Open Sans',
                      color: Color(0x80FFFFFF),
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(40, 15, 40, 0),
                  child: TextFormField(
                    controller: passFieldController,
                    obscureText: !passFieldVisibility,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Open Sans',
                        color: Color(0x80FFFFFF),
                        fontWeight: FontWeight.normal,
                      ),
                      hintText: 'Please enter your password...',
                      hintStyle: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Open Sans',
                        color: Color(0x80FFFFFF),
                        fontWeight: FontWeight.normal,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      filled: true,
                      fillColor: Color(0x41343333),
                      suffixIcon: InkWell(
                        onTap: () => setState(
                          () => passFieldVisibility = !passFieldVisibility,
                        ),
                        child: Icon(
                          passFieldVisibility
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: Color(0xFF757575),
                          size: 22,
                        ),
                      ),
                    ),
                    style: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Open Sans',
                      color: Color(0x80FFFFFF),
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(40, 15, 40, 0),
                  child: TextFormField(
                    controller: confirmPassFieldController,
                    obscureText: !confirmPassFieldVisibility,
                    decoration: InputDecoration(
                      labelText: 'Confirm Password',
                      labelStyle: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Open Sans',
                        color: Color(0x80FFFFFF),
                        fontWeight: FontWeight.normal,
                      ),
                      hintText: 'Please confirm your password...',
                      hintStyle: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Open Sans',
                        color: Color(0x80FFFFFF),
                        fontWeight: FontWeight.normal,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      filled: true,
                      fillColor: Color(0x41343333),
                      suffixIcon: InkWell(
                        onTap: () => setState(
                          () => confirmPassFieldVisibility =
                              !confirmPassFieldVisibility,
                        ),
                        child: Icon(
                          confirmPassFieldVisibility
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: Color(0xFF757575),
                          size: 22,
                        ),
                      ),
                    ),
                    style: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Open Sans',
                      color: Color(0x80FFFFFF),
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(40, 20, 40, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {
                          setState(() => _loadingButton = true);
                          try {
                            if (passFieldController.text !=
                                confirmPassFieldController.text) {
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
                              emailFieldController.text,
                              passFieldController.text,
                            );
                            if (user == null) {
                              return;
                            }

                            final usersCreateData = createUsersRecordData(
                              email: '',
                              specialty: '',
                              phoneNumber: '',
                              gender: '',
                              displayName: '',
                            );
                            await UsersRecord.collection
                                .doc(user.uid)
                                .update(usersCreateData);

                            await Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    NavBarPage(initialPage: 'Home_Page'),
                              ),
                              (r) => false,
                            );
                          } finally {
                            setState(() => _loadingButton = false);
                          }
                        },
                        text: 'Sign Up',
                        options: FFButtonOptions(
                          width: 130,
                          height: 40,
                          color: FlutterFlowTheme.customColor1,
                          textStyle: FlutterFlowTheme.subtitle2.override(
                            fontFamily: 'Open Sans',
                            color: Colors.white,
                          ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: 12,
                        ),
                        loading: _loadingButton,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
