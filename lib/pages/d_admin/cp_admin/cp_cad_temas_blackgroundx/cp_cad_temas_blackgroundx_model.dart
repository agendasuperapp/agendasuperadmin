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
  bool isDataUploading_uploadDataLigth = false;
  FFUploadedFile uploadedLocalFile_uploadDataLigth =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataLigth = '';

  bool isDataUploading_uploadDataDark = false;
  FFUploadedFile uploadedLocalFile_uploadDataDark =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataDark = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
