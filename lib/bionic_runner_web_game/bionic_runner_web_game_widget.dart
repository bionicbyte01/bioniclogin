import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'bionic_runner_web_game_model.dart';
export 'bionic_runner_web_game_model.dart';

class BionicRunnerWebGameWidget extends StatefulWidget {
  const BionicRunnerWebGameWidget({super.key});

  static String routeName = 'BionicRunnerWebGame';
  static String routePath = '/bionicRunnerWebGame';

  @override
  State<BionicRunnerWebGameWidget> createState() =>
      _BionicRunnerWebGameWidgetState();
}

class _BionicRunnerWebGameWidgetState extends State<BionicRunnerWebGameWidget> {
  late BionicRunnerWebGameModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BionicRunnerWebGameModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFFFF46B),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              FlutterFlowWebView(
                content: 'https://bionic-byte.itch.io/bionicrunner',
                height: 753.0,
                verticalScroll: true,
                horizontalScroll: true,
              ),
              Align(
                alignment: AlignmentDirectional(1.0, 1.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 22.0, 0.0),
                  child: FlutterFlowIconButton(
                    borderColor: Color(0xFFA9FF55),
                    borderRadius: 22.0,
                    buttonSize: 45.0,
                    fillColor: Color(0xFFFF851C),
                    hoverColor: Color(0xFF4EFB99),
                    hoverIconColor: Color(0xFFBBFF52),
                    icon: Icon(
                      Icons.logout_outlined,
                      color: Color(0xFFFFE024),
                      size: 21.0,
                    ),
                    showLoadingIndicator: true,
                    onPressed: () async {
                      context.pushNamed(
                        LoginPageWidget.routeName,
                        extra: <String, dynamic>{
                          kTransitionInfoKey: TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.rightToLeft,
                            duration: Duration(milliseconds: 1000),
                          ),
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
