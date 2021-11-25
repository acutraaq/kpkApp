import '../add_doctor_page/add_doctor_page_widget.dart';
import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../inventory_page/inventory_page_widget.dart';
import '../manage_slot_page/manage_slot_page_widget.dart';
import '../onboarding_page/onboarding_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminPageWidget extends StatefulWidget {
  AdminPageWidget({Key key}) : super(key: key);

  @override
  _AdminPageWidgetState createState() => _AdminPageWidgetState();
}

class _AdminPageWidgetState extends State<AdminPageWidget> {
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
            Icons.menu,
            color: FlutterFlowTheme.tertiaryColor,
            size: 24,
          ),
          onPressed: () async {
            scaffoldKey.currentState.openDrawer();
          },
        ),
        title: Text(
          'Admin Dashboard',
          style: FlutterFlowTheme.title1.override(
            fontFamily: 'Open Sans',
            color: FlutterFlowTheme.tertiaryColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              Icons.logout,
              color: FlutterFlowTheme.tertiaryColor,
              size: 24,
            ),
            onPressed: () async {
              await signOut();
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => OnboardingPageWidget(),
                ),
              );
            },
          )
        ],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.customColor1,
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/Asset_2.png',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
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
              Divider(
                color: Color(0x65FFFFFF),
              ),
              InkWell(
                onTap: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => InventoryPageWidget(),
                    ),
                  );
                },
                child: ListTile(
                  title: Text(
                    'Inventory Management',
                    style: FlutterFlowTheme.title3.override(
                      fontFamily: 'Open Sans',
                      color: FlutterFlowTheme.tertiaryColor,
                    ),
                  ),
                  trailing: Icon(
                    Icons.inventory,
                    color: FlutterFlowTheme.tertiaryColor,
                    size: 20,
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  dense: false,
                ),
              ),
              Divider(
                color: Color(0x65FFFFFF),
              ),
              InkWell(
                onTap: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ManageSlotPageWidget(),
                    ),
                  );
                },
                child: ListTile(
                  title: Text(
                    'Manage Slot',
                    style: FlutterFlowTheme.title3.override(
                      fontFamily: 'Open Sans',
                      color: FlutterFlowTheme.tertiaryColor,
                    ),
                  ),
                  trailing: FaIcon(
                    FontAwesomeIcons.calendarAlt,
                    color: FlutterFlowTheme.tertiaryColor,
                    size: 20,
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  dense: false,
                ),
              ),
              Divider(
                color: Color(0x65FFFFFF),
              ),
              InkWell(
                onTap: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddDoctorPageWidget(),
                    ),
                  );
                },
                child: ListTile(
                  title: Text(
                    'Add New Doctor',
                    style: FlutterFlowTheme.title3.override(
                      fontFamily: 'Open Sans',
                      color: FlutterFlowTheme.tertiaryColor,
                    ),
                  ),
                  trailing: Icon(
                    Icons.person_add_alt_1,
                    color: FlutterFlowTheme.tertiaryColor,
                    size: 20,
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  dense: false,
                ),
              ),
              Divider(
                color: Color(0x65FFFFFF),
              )
            ],
          ),
        ),
      ),
    );
  }
}
