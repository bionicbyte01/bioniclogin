import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'bionic_byte_assistant_model.dart';
export 'bionic_byte_assistant_model.dart';

class BionicByteAssistantWidget extends StatefulWidget {
  const BionicByteAssistantWidget({super.key});

  static String routeName = 'BionicByteAssistant';
  static String routePath = '/bionicByteAssistant';

  @override
  State<BionicByteAssistantWidget> createState() =>
      _BionicByteAssistantWidgetState();
}

class _BionicByteAssistantWidgetState extends State<BionicByteAssistantWidget> {
  late BionicByteAssistantModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BionicByteAssistantModel());

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
        backgroundColor: Colors.black,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              FlutterFlowWebView(
                content: 'https://bionicbyte-ai-assistant.flutterflow.app/',
                height: 759.0,
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
                    buttonSize: 48.0,
                    fillColor: Color(0xFF1DFF1C),
                    hoverColor: Color(0xFF4EFB99),
                    hoverIconColor: Color(0xFFBBFF52),
                    icon: FaIcon(
                      FontAwesomeIcons.gamepad,
                      color: Color(0xFFFF2424),
                      size: 16.0,
                    ),
                    showLoadingIndicator: true,
                    onPressed: () async {
                      context.pushNamed(
                        BionicRunnerWebGameWidget.routeName,
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
