import 'package:centa_clone/widgets/text_editor/custom_embed_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_quill/flutter_quill.dart';

class QuilTextEditor extends StatelessWidget {
  final textEditorContent;
  const QuilTextEditor({super.key, required this.textEditorContent});

  @override
  Widget build(BuildContext context) {
    QuillController _controller = QuillController.basic();
    _controller.document = Document.fromJson(textEditorContent);
    return SizedBox(
      child: Column(
        children: [
          Padding(
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
                embedBuilders: [CustomImageEmbedBuilder(isFileImage: false)],
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
        ],
      ),
    );
  }
}
