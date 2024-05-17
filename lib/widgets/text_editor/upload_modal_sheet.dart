import 'package:centa_clone/services/pick_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';

void showImageOrVideoPicker(BuildContext context, QuillController controller) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          width: MediaQuery.of(context).size.width * 1,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () => pickImageUsingCamera(controller),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.camera_alt,
                        size: 28,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Camera',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () => insertImage(controller,context),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.photo,
                        size: 28,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text('Gallery',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () => Navigator.of(context).pop(),
                  child: const Row(
                    children: [
                      Icon(Icons.close, color: Colors.red, size: 28),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Cancel',
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      });

      
}

