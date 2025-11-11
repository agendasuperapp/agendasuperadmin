import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'ca_aguarde_model.dart';
export 'ca_aguarde_model.dart';

class CaAguardeWidget extends StatefulWidget {
  const CaAguardeWidget({
    super.key,
    required this.paramMostrarAnimacao,
    bool? paramFecharAoClicar,
  }) : this.paramFecharAoClicar = paramFecharAoClicar ?? true;

  final bool? paramMostrarAnimacao;
  final bool paramFecharAoClicar;

  @override
  State<CaAguardeWidget> createState() => _CaAguardeWidgetState();
}

class _CaAguardeWidgetState extends State<CaAguardeWidget> {
  late CaAguardeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CaAguardeModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        if (widget.paramFecharAoClicar) {
          Navigator.pop(context);
        }
      },
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        height: MediaQuery.sizeOf(context).height * 1.0,
        decoration: BoxDecoration(),
        child: Visibility(
          visible: widget.paramMostrarAnimacao ?? true,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Lottie.asset(
              'assets/jsons/Animation_-_1726521073290.json',
              width: 150.0,
              height: 150.0,
              fit: BoxFit.contain,
              animate: true,
            ),
          ),
        ),
      ),
    );
  }
}
