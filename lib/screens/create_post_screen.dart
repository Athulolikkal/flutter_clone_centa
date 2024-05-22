// import 'package:centa_clone/widgets/text_editor/quil_text_editor.dart';
import 'package:centa_clone/applcation/bloc/loading/loading_bloc.dart';
import 'package:centa_clone/services/update_post.dart';
import 'package:centa_clone/widgets/loading_modal.dart';
import 'package:centa_clone/widgets/text_editor/custom_embed_builder.dart';
import 'package:centa_clone/widgets/text_editor/upload_modal_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quill/flutter_quill.dart';

class AddPostWidget extends StatelessWidget {
  const AddPostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    QuillController _controller = QuillController.basic();
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.keyboard_arrow_left,
              size: 30,
            )),
        title: InkWell(
          onTap: () => print('current value is public'),
          child: const Row(children: [
            Text(
              'Public',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.keyboard_arrow_down,
              color: Color.fromARGB(255, 82, 169, 241),
            )
          ]),
        ),
        actions: [
          const CircleAvatar(
            radius: 11,
            backgroundColor: Color.fromARGB(255, 151, 136, 136),
            child: CircleAvatar(
              radius: 9,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.question_mark,
                size: 15,
                color: Color.fromARGB(255, 151, 136, 136),
              ),
            ),
          ),
          BlocBuilder<LoadingBloc, LoadingState>(
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.blue),
                      foregroundColor: MaterialStatePropertyAll(Colors.white),
                      minimumSize: MaterialStatePropertyAll(Size(40, 30))),
                  onPressed: state.isLoading
                      ? null
                      : () async {
                          BlocProvider.of<LoadingBloc>(context)
                              .add(const LoadingEvent.setLoading());

                          showDialog(
                              context: context,
                              barrierDismissible: false,
                              builder: (BuildContext context) {
                                return const AlertModal();
                              });
                          Future.delayed(Duration(seconds: 1));
                          print('started calling the update post');
                          Map<String, dynamic> postDetails =
                              await updatePost(_controller);
                          print('returnd the response from update post');
                          if (postDetails['empty']) {
                            Navigator.of(context).pop();
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content:
                                  Text('Please add the content before posting'),
                              margin: EdgeInsets.all(10),
                              behavior: SnackBarBehavior.floating,
                              backgroundColor: Color.fromARGB(255, 31, 31, 31),
                            ));
                          } else if (postDetails['error']) {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content: Text(
                                  'Failed to upload post,Please try again after some time...'),
                              margin: EdgeInsets.all(10),
                              behavior: SnackBarBehavior.floating,
                              backgroundColor: Color.fromARGB(255, 229, 28, 28),
                            ));
                            Navigator.of(context).pop();
                            Navigator.of(context).pop();
                          } else {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content: Text('Uploaded successfully'),
                              margin: EdgeInsets.all(10),
                              behavior: SnackBarBehavior.floating,
                              backgroundColor: Color.fromARGB(255, 93, 225, 57),
                            ));
                            Navigator.of(context).pop();
                            Navigator.of(context).pop();
                          }
                          BlocProvider.of<LoadingBloc>(context)
                              .add(const LoadingEvent.setNotLoading());
                        },
                  child: Text(state.isLoading ? 'Loading...' : 'Share Post'),
                ),
              );
            },
          ),
        ],
      ),
      body: SizedBox(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: QuillEditor.basic(
                  configurations: QuillEditorConfigurations(
                    placeholder: 'What\'s happening...',
                    controller: _controller,
                    embedBuilders: [CustomImageEmbedBuilder()],
                    autoFocus: true,
                    showCursor: true,
                    textSelectionThemeData: const TextSelectionThemeData(
                        cursorColor: Color.fromARGB(255, 58, 153, 230)),
                    sharedConfigurations: const QuillSharedConfigurations(
                      locale: Locale('de'),
                    ),
                    enableInteractiveSelection: true,
                    customStyles: const DefaultStyles(
                      link: TextStyle(
                        color: Color.fromARGB(255, 59, 155, 234),
                        fontWeight: FontWeight.w600,
                      ),
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
                      ),
                    ),
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
                      ),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(255, 212, 211, 211),
                      width: 1),
                ),
                customButtons: [
                  QuillToolbarCustomButtonOptions(
                    icon: const Icon(
                      Icons.image,
                      color: Colors.black,
                    ),
                    onPressed: () =>
                        showImageOrVideoPicker(context, _controller),
                  ),
                  const QuillToolbarCustomButtonOptions(
                      icon: Icon(
                    Icons.video_camera_back,
                    color: Colors.black,
                  )),
                  const QuillToolbarCustomButtonOptions(
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
          ],
        ),
      ),
    );
  }
}
