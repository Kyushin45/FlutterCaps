import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State {
  File? imageFile;
  final imagePicker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return Scaffold(
        // appBar: AppBar(
        //   title: const Text("Pendeteksi Ekpresi Wajah"),
        //   backgroundColor: Color.fromRGBO(17, 0, 158, 1),
        // ),
        body:
            Container(
              decoration: BoxDecoration(image: DecorationImage(
                image: AssetImage('assets/image/test.png'),
                  fit: BoxFit.cover

              )),
              padding: EdgeInsets.only(top: 100),
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: new BoxDecoration(color: Colors.white),
                    margin: const EdgeInsets.all(20),
                    width: size.width,
                    height: 250,
                    child: DottedBorder(
                        borderType: BorderType.RRect,
                        radius: const Radius.circular(12),
                        color:Color.fromRGBO(17, 0, 158, 1),
                        strokeWidth: 1,
                        dashPattern: const [5, 5],
                        child: SizedBox.expand(
                          child: FittedBox(
                            child: imageFile != null
                                ? Image.file(File(imageFile!.path),
                                fit: BoxFit.cover)
                                : const Icon(
                              Icons.image_outlined,
                              color: Color.fromRGBO(17, 0, 158, 1),
                            ),
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 40, 40, 20),
                    child: Material(
                      elevation: 3,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        width: size.width,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromRGBO(17, 0, 158, 1)),
                        child: Material(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.transparent,
                          child: InkWell(
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () {
                              showPictureDialog();
                            },
                            child: const Center(
                              child: Text(
                                'Pick Image',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Material(
                      elevation: 3,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        width: size.width,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromRGBO(17, 0, 158, 1)),
                        child: Material(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.transparent,
                          child: InkWell(
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () {
                              setState(() {
                                imageFile = null;
                              });
                            },
                            child: const Center(
                              child: Text(
                                'Clear Image',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
            
        // Column(
        //
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //     Container(
        //       decoration: new BoxDecoration(color: Colors.white),
        //       margin: const EdgeInsets.all(20),
        //       width: size.width,
        //       height: 250,
        //       child: DottedBorder(
        //           borderType: BorderType.RRect,
        //           radius: const Radius.circular(12),
        //           color:Color.fromRGBO(17, 0, 158, 1),
        //           strokeWidth: 1,
        //           dashPattern: const [5, 5],
        //           child: SizedBox.expand(
        //             child: FittedBox(
        //               child: imageFile != null
        //                   ? Image.file(File(imageFile!.path),
        //                   fit: BoxFit.cover)
        //                   : const Icon(
        //                 Icons.image_outlined,
        //                 color: Color.fromRGBO(17, 0, 158, 1),
        //               ),
        //             ),
        //           )),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.fromLTRB(40, 40, 40, 20),
        //       child: Material(
        //         elevation: 3,
        //         borderRadius: BorderRadius.circular(20),
        //         child: Container(
        //           width: size.width,
        //           height: 50,
        //           decoration: BoxDecoration(
        //               borderRadius: BorderRadius.circular(20),
        //               color: Color.fromRGBO(17, 0, 158, 1)),
        //           child: Material(
        //             borderRadius: BorderRadius.circular(20),
        //             color: Colors.transparent,
        //             child: InkWell(
        //               splashColor: Colors.transparent,
        //               highlightColor: Colors.transparent,
        //               onTap: () {
        //                 showPictureDialog();
        //               },
        //               child: const Center(
        //                 child: Text(
        //                   'Pick Image',
        //                   style: TextStyle(
        //                       color: Colors.white,
        //                       fontWeight: FontWeight.bold),
        //                 ),
        //               ),
        //             ),
        //           ),
        //         ),
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.symmetric(horizontal: 40),
        //       child: Material(
        //         elevation: 3,
        //         borderRadius: BorderRadius.circular(20),
        //         child: Container(
        //           width: size.width,
        //           height: 50,
        //           decoration: BoxDecoration(
        //               borderRadius: BorderRadius.circular(20),
        //               color: Color.fromRGBO(17, 0, 158, 1)),
        //           child: Material(
        //             borderRadius: BorderRadius.circular(20),
        //             color: Colors.transparent,
        //             child: InkWell(
        //               splashColor: Colors.transparent,
        //               highlightColor: Colors.transparent,
        //               onTap: () {
        //                 setState(() {
        //                   imageFile = null;
        //                 });
        //               },
        //               child: const Center(
        //                 child: Text(
        //                   'Clear Image',
        //                   style: TextStyle(
        //                       color: Colors.white,
        //                       fontWeight: FontWeight.bold),
        //                 ),
        //               ),
        //             ),
        //           ),
        //         ),
        //       ),
        //     ),
        //   ],
        // )
    );
  }

  Future<void> showPictureDialog() async {
    await showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text('Select Action'),
            children: [
              SimpleDialogOption(
                onPressed: () {
                  getFromCamera();
                  Navigator.of(context).pop();
                },
                child: const Text('Open Camera'),
              ),
              SimpleDialogOption(
                onPressed: () {
                  getFromGallery();
                  Navigator.of(context).pop();
                },
                child: const Text('Open Gallery'),
              ),
            ],
          );
        });
  }

  // get from gallery
  getFromGallery() async {
    final pickedFile = await imagePicker.pickImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }

  // get from camera
  getFromCamera() async {
    final pickedFile = await imagePicker.pickImage(
      source: ImageSource.camera,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }

}