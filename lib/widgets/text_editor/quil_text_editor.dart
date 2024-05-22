import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_quill/flutter_quill.dart';

class QuilTextEditor extends StatelessWidget {
  const QuilTextEditor({super.key});

  @override
  Widget build(BuildContext context) {
    QuillController _controller = QuillController.basic();
    _controller.document = Document.fromJson([
      {"insert": "Hello connections we are #"},
      {
        "insert": "hiring",
        "attributes": {"bold": true}
      },
      {"insert": "\n\n"}
    ]);
    return SizedBox(
      height: 200,
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: QuillEditor.basic(
                focusNode: FocusNode(
                  skipTraversal: true,
                  canRequestFocus: false,
                  descendantsAreFocusable: false,
                ),
                configurations: QuillEditorConfigurations(
                  checkBoxReadOnly: true,
                  controller: _controller,
                  isOnTapOutsideEnabled: false,
                  showCursor: false,
                  autoFocus: false,
                  floatingCursorDisabled: true,
                  sharedConfigurations: const QuillSharedConfigurations(
                    locale: Locale('de'),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
