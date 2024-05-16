import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_quill/quill_delta.dart';

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
              child:QuillEditor.basic(
                configurations: QuillEditorConfigurations(
                  placeholder:  'What\'s happening...' ,
                 
                  controller: _controller,

                  autoFocus: true,
                  showCursor: true,
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
                buttonOptions: const QuillSimpleToolbarButtonOptions(
                  bold: QuillToolbarToggleStyleButtonOptions(
                    iconTheme: QuillIconTheme(
                        iconButtonUnselectedData:
                            IconButtonData(color: Colors.black),
                        iconButtonSelectedData: IconButtonData(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.white),
                              foregroundColor:
                                  MaterialStatePropertyAll(Colors.black)),
                        )),
                  ),
                  italic: QuillToolbarToggleStyleButtonOptions(
                    iconTheme: QuillIconTheme(
                        iconButtonUnselectedData:
                            IconButtonData(color: Colors.black),
                        iconButtonSelectedData: IconButtonData(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.white),
                              foregroundColor:
                                  MaterialStatePropertyAll(Colors.black)),
                        )),
                  ),
                  underLine: QuillToolbarToggleStyleButtonOptions(
                    iconTheme: QuillIconTheme(
                        iconButtonUnselectedData:
                            IconButtonData(color: Colors.black),
                        iconButtonSelectedData: IconButtonData(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.white),
                              foregroundColor:
                                  MaterialStatePropertyAll(Colors.black)),
                        )),
                  ),
                  strikeThrough: QuillToolbarToggleStyleButtonOptions(
                    iconTheme: QuillIconTheme(
                        iconButtonUnselectedData:
                            IconButtonData(color: Colors.black),
                        iconButtonSelectedData: IconButtonData(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.white),
                              foregroundColor:
                                  MaterialStatePropertyAll(Colors.black)),
                        )),
                  ),
                  listBullets: QuillToolbarToggleStyleButtonOptions(
                    iconTheme: QuillIconTheme(
                        iconButtonUnselectedData:
                            IconButtonData(color: Colors.black),
                        iconButtonSelectedData: IconButtonData(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.white),
                              foregroundColor:
                                  MaterialStatePropertyAll(Colors.black)),
                        )),
                  ),
                  linkStyle: QuillToolbarLinkStyleButtonOptions(
                    iconTheme: QuillIconTheme(
                        iconButtonUnselectedData:
                            IconButtonData(color: Colors.black),
                        iconButtonSelectedData: IconButtonData(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.white),
                              foregroundColor:
                                  MaterialStatePropertyAll(Colors.black)),
                        )),
                  ),
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(255, 212, 211, 211),
                      width: 1),
                ),
                customButtons: const [
                  QuillToolbarCustomButtonOptions(
                    icon: Icon(
                      Icons.image,
                      color: Colors.black,
                    ),
                  ),
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
                showHeaderStyle: false,
              ),
            ),
          // share post button
        
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: ElevatedButton(
            //     onPressed: () {
            //      Delta enteredText = _controller.document.toDelta();
            //      print(enteredText);
            //     },
            //     style: ButtonStyle(
            //         backgroundColor: const MaterialStatePropertyAll(
            //             Color.fromARGB(255, 62, 161, 243)),
            //         foregroundColor:
            //             const MaterialStatePropertyAll(Colors.white),
            //         minimumSize: MaterialStatePropertyAll(
            //             Size(MediaQuery.of(context).size.width * 0.9, 40))),
            //     child: const Text(
            //       'Share Post',
            //       style: TextStyle(fontSize: 16),
            //     ),
            //   ),
            // )
        ],
      ),
    );
  }
}
