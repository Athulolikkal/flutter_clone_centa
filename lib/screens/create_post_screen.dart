import 'package:centa_clone/widgets/text_editor/quil_text_editor.dart';
import 'package:flutter/material.dart';

// import 'package:flutter_quill/flutter_quill.dart';

class AddPostWidget extends StatelessWidget {
  const AddPostWidget({super.key});

  @override
  Widget build(BuildContext context) {
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.blue),
                      foregroundColor: MaterialStatePropertyAll(Colors.white),
                      minimumSize: MaterialStatePropertyAll(Size(40, 30))),
                  onPressed: () {},
                  child: const Text('Preview')),
            ),
          ],
        ),
        body: const SizedBox(child: QuilTextEditor()));
  }
}
