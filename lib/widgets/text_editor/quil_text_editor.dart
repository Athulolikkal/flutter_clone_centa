import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_quill/flutter_quill.dart';

class QuilTextEditor extends StatelessWidget {
  const QuilTextEditor({super.key});

  @override
  Widget build(BuildContext context) {
    QuillController _controller = QuillController.basic();
    return SizedBox(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: QuillEditor.basic(
                configurations: QuillEditorConfigurations(
                  controller: _controller,
                  autoFocus: true,
                  sharedConfigurations: const QuillSharedConfigurations(
                    locale: Locale('de'),
                  ),
                ),
              ),
            ),
          ),
          QuillToolbar.simple(
            configurations: QuillSimpleToolbarConfigurations(
              controller: _controller,
              customButtons: const [
                // QuillToolbarCustomButtonOptions(
                //   icon:  Icon(
                //   Icons.bolt),
                //    onPressed: () { _controller.formatSelection(Attribute.bold);},
                // // Set custom button icon color to black
                // ),
                QuillToolbarCustomButtonOptions(
                    icon: Icon(
                  Icons.image,
                  color: Colors.black,
                  
                )),
                QuillToolbarCustomButtonOptions(
                    icon: Icon(
                  Icons.video_camera_back,
                  color: Colors.black,
                )),
                QuillToolbarCustomButtonOptions(
                  icon: Icon(
                    Icons.tag,
                    color: Colors.black,
                  ),
                ),
              ],
              multiRowsDisplay: false,
              showUndo: false,
              showRedo: false,
              showFontFamily: false,
              showFontSize: false,
              showBackgroundColorButton: false,
              showRightAlignment: false,
              showLeftAlignment: false,
              showClipboardCut: false,
              showClipboardCopy: false,
              showClipboardPaste: false,
              showSearchButton: false,
              showQuote: false,
              showCenterAlignment: false,
              showInlineCode: false,
              showSubscript: false,
              showSuperscript: false,
              showColorButton: false,
              showDividers: false,
              showAlignmentButtons: false,
              showListCheck: false,
              showCodeBlock: false,
              showListNumbers: false,
              showDirection: false,
              showClearFormat: false,
              showIndent: false,
            ),
          ),
        ],
      ),
    );
  }
}
