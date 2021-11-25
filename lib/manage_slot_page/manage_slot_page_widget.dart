import '../admin_page/admin_page_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ManageSlotPageWidget extends StatefulWidget {
  ManageSlotPageWidget({Key key}) : super(key: key);

  @override
  _ManageSlotPageWidgetState createState() => _ManageSlotPageWidgetState();
}

class _ManageSlotPageWidgetState extends State<ManageSlotPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.customColor2,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.chevron_left,
            color: FlutterFlowTheme.tertiaryColor,
            size: 24,
          ),
          onPressed: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AdminPageWidget(),
              ),
            );
          },
        ),
        title: Text(
          'Slot Management',
          style: FlutterFlowTheme.title1.override(
            fontFamily: 'Open Sans',
            color: FlutterFlowTheme.tertiaryColor,
            fontSize: 20,
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.customColor1,
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
                    color: FlutterFlowTheme.tertiaryColor,
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
