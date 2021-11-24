import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddDoctorPageWidget extends StatefulWidget {
  AddDoctorPageWidget({Key key}) : super(key: key);

  @override
  _AddDoctorPageWidgetState createState() => _AddDoctorPageWidgetState();
}

class _AddDoctorPageWidgetState extends State<AddDoctorPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.customColor2,
        automaticallyImplyLeading: false,
        leading: Icon(
          Icons.chevron_left,
          color: FlutterFlowTheme.tertiaryColor,
          size: 24,
        ),
        title: Text(
          'Add Doctor',
          style: FlutterFlowTheme.title1.override(
            fontFamily: 'Open Sans',
            color: FlutterFlowTheme.tertiaryColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.customColor1,
    );
  }
}
