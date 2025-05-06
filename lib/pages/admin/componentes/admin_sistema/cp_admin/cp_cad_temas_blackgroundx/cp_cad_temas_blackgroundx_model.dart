import '/flutter_flow/flutter_flow_util.dart';
import 'cp_cad_temas_blackgroundx_widget.dart'
    show CpCadTemasBlackgroundxWidget;
import 'package:flutter/material.dart';

class CpCadTemasBlackgroundxModel
    extends FlutterFlowModel<CpCadTemasBlackgroundxWidget> {
  ///  Local state fields for this component.

  bool varSituacao = true;

  List<int> varIDSegmentosLiberados = [];
  void addToVarIDSegmentosLiberados(int item) =>
      varIDSegmentosLiberados.add(item);
  void removeFromVarIDSegmentosLiberados(int item) =>
      varIDSegmentosLiberados.remove(item);
  void removeAtIndexFromVarIDSegmentosLiberados(int index) =>
      varIDSegmentosLiberados.removeAt(index);
  void insertAtIndexInVarIDSegmentosLiberados(int index, int item) =>
      varIDSegmentosLiberados.insert(index, item);
  void updateVarIDSegmentosLiberadosAtIndex(
          int index, Function(int) updateFn) =>
      varIDSegmentosLiberados[index] = updateFn(varIDSegmentosLiberados[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
