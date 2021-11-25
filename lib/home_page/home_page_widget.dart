import '../about_us_page/about_us_page_widget.dart';
import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../onboarding_page/onboarding_page_widget.dart';
import '../req_m_c_page/req_m_c_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
            Icons.menu,
            color: FlutterFlowTheme.customColor1,
            size: 24,
          ),
          onPressed: () async {
            scaffoldKey.currentState.openDrawer();
          },
        ),
        title: Text(
          'Dashboard',
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
      drawer: Drawer(
        elevation: 16,
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.customColor2,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 40, 20, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0x00EEEEEE),
                      ),
                      child: Container(
                        width: 120,
                        height: 120,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                          'https://picsum.photos/seed/638/600',
                        ),
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              AuthUserStreamWidget(
                                child: Text(
                                  currentUserDisplayName,
                                  style: FlutterFlowTheme.subtitle1.override(
                                    fontFamily: 'Open Sans',
                                    color: FlutterFlowTheme.customColor1,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 5, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              AuthUserStreamWidget(
                                child: Text(
                                  currentPhoneNumber,
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Open Sans',
                                    color: FlutterFlowTheme.customColor3,
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Divider(
                thickness: 1,
                indent: 2,
                endIndent: 2,
                color: Color(0x4BFFFFFF),
              ),
              InkWell(
                onTap: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ReqMCPageWidget(),
                    ),
                  );
                },
                child: ListTile(
                  title: Text(
                    'Request MC',
                    style: FlutterFlowTheme.title3.override(
                      fontFamily: 'Open Sans',
                      color: FlutterFlowTheme.tertiaryColor,
                    ),
                  ),
                  trailing: Icon(
                    Icons.assignment_outlined,
                    color: FlutterFlowTheme.tertiaryColor,
                    size: 20,
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  dense: false,
                ),
              ),
              Divider(
                color: Color(0x4BFFFFFF),
              ),
              InkWell(
                onTap: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AboutUsPageWidget(),
                    ),
                  );
                },
                child: ListTile(
                  title: Text(
                    'About Us',
                    style: FlutterFlowTheme.title3.override(
                      fontFamily: 'Open Sans',
                      color: FlutterFlowTheme.tertiaryColor,
                    ),
                  ),
                  trailing: Icon(
                    Icons.info_outlined,
                    color: FlutterFlowTheme.tertiaryColor,
                    size: 20,
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  dense: false,
                ),
              ),
              Divider(
                color: Color(0x4BFFFFFF),
              ),
              InkWell(
                onTap: () async {
                  await signOut();
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OnboardingPageWidget(),
                    ),
                  );
                },
                child: ListTile(
                  title: Text(
                    'Logout',
                    style: FlutterFlowTheme.title3.override(
                      fontFamily: 'Open Sans',
                      color: FlutterFlowTheme.tertiaryColor,
                    ),
                  ),
                  trailing: Icon(
                    Icons.logout,
                    color: FlutterFlowTheme.tertiaryColor,
                    size: 20,
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  dense: false,
                ),
              ),
              Divider(
                color: Color(0x4BFFFFFF),
              )
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'UNDER DEVELOPMENT',
                  style: FlutterFlowTheme.title1.override(
                    fontFamily: 'Open Sans',
                    color: FlutterFlowTheme.customColor1,
                    fontSize: 20,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
