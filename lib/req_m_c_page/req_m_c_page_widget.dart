import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReqMCPageWidget extends StatefulWidget {
  ReqMCPageWidget({Key key}) : super(key: key);

  @override
  _ReqMCPageWidgetState createState() => _ReqMCPageWidgetState();
}

class _ReqMCPageWidgetState extends State<ReqMCPageWidget> {
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
            Icons.chevron_left,
            color: FlutterFlowTheme.customColor1,
            size: 24,
          ),
          onPressed: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NavBarPage(initialPage: 'Home_Page'),
              ),
            );
          },
        ),
        title: Text(
          'Request MC',
          style: FlutterFlowTheme.title1.override(
            fontFamily: 'Open Sans',
            color: FlutterFlowTheme.customColor1,
            fontSize: 20,
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.customColor3,
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
