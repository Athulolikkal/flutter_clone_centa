import 'package:flutter/material.dart';

void showImageOrVideoPicker(BuildContext context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          height: 200,
          width: MediaQuery.of(context).size.width * 1,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () => print('clicked camera'),
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
                  onTap: () => print('clicked gallery'),
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
                  onTap: () =>   Navigator.of(context).pop(),
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
