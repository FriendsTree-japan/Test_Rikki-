import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import '99_base64_helper.dart';
import 'package:path_provider/path_provider.dart';

class ImageTrim extends StatefulWidget {
  late String myImagePath;
  late String stateFlg;

  ImageTrim.image(this.myImagePath, this.stateFlg);

  @override
  _ImageTrimState createState() => _ImageTrimState();
}

class _ImageTrimState extends State<ImageTrim> {
  File? imageFile;
  late String myImagePath;
  late String stateFlg;
  late String _base64ImageString = '';

  String get base64ImageString => _base64ImageString;

  @override
  void initState() {
    super.initState();
    this.myImagePath = widget.myImagePath;
    this.stateFlg = widget.stateFlg;
  }

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;
    return WillPopScope(
      onWillPop: () {
        // 第2引数に渡す値を設定
        Navigator.pop(context, myImagePath);
        return Future.value(false);
      },
      child:
      Scaffold(
        appBar: AppBar(
            leading: new IconButton(
                icon: new Icon(Icons.close, color: Colors.black),
                onPressed: () {
                  Navigator.pop(context, myImagePath);
                }
            ),
            backgroundColor: Colors.black54,
            title: Text("画像選択画面",style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            )),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.add_a_photo, color: Colors.black),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (childContext) {
                      return SimpleDialog(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(
                                20))),
                        children: <Widget>[
                          SimpleDialogOption(
                            onPressed: () async {
                              Navigator.pop(childContext);
                              await _pickImage();
                              await _cropImage();
                            },
                            child: Center(
                              child: Text(
                                "写真を選択する",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          // Divider(color: Colors.black),
                          // SimpleDialogOption(
                          //   onPressed: () {
                          //     _cropImage();
                          //   },
                          //   child: Center(
                          //     child: Text(
                          //       "写真をトリミングする",
                          //       textAlign: TextAlign.center,
                          //     ),
                          //   ),
                          // ),
                          Divider(color: Colors.black),
                          SimpleDialogOption(
                            onPressed: () {
                              _clearImage();
                            },
                            child: Center(
                              child: Text(
                                "写真を削除する",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Divider(color: Colors.black),
                          SimpleDialogOption(
                            onPressed: () {
                              Navigator.pop(childContext);
                            },
                            child: Center(
                              child: Text(
                                'キャンセル',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
              )
            ]),
        body: Center(
          child: myImagePath != ""
              ? Base64Helper.imageFromBase64String(
              myImagePath
          )
              : Container(child: Text('No image selected.')),
        ),
      ),
    );
  }

  Future _pickImage() async {
    final pickedImage =
    await ImagePicker().pickImage(source: ImageSource.gallery);
    imageFile = pickedImage != null ? File(pickedImage.path) : null;
    final time = DateTime
        .now()
        .millisecondsSinceEpoch;

    final directory = await getApplicationDocumentsDirectory();
    final path = directory.path;
    final copiedImageFile = await imageFile!.copy('$path/$time.png');
    // notifyListeners();

    // DBへ保存する為、base64文字列へ変換
    _base64ImageString =
        Base64Helper.base64String(copiedImageFile.readAsBytesSync());

    // 端末の一時ファイルを削除
    // _deleteFile(imageFile!);
    setState(() {
      this.myImagePath = _base64ImageString;
      // state = AppState.picked;
    });
  }

  /// 該当パスのファイルが存在しているときに、返却します
  Future<File?> _getLocalFile(File file) async {
    if (await File(file.path).exists()) {
      debugPrint('${file.path} deleted');
      return File(file.path);
    }
    return null;
  }

  /// 返却されたファイルパスが存在するときに、削除します
  void _deleteFile(File targetFile,) async {
    try {
      final file = await _getLocalFile(targetFile);
      await file!.delete();
    } catch (e) {
      debugPrint('Delete file error: $e');
    }
    if (imageFile != null) {
      setState(() {
        // state = AppState.picked;
      });
    }
  }

  Future _cropImage() async {
    // final double deviceHeight = MediaQuery.of(context).size.height;
    // final double deviceWidth = MediaQuery.of(context).size.width;

    File ? croppedFile = await ImageCropper.cropImage(
        sourcePath: imageFile!.path,
        aspectRatioPresets: Platform.isAndroid
            ? [
          CropAspectRatioPreset.square,
          CropAspectRatioPreset.ratio3x2,
          CropAspectRatioPreset.original,
          CropAspectRatioPreset.ratio4x3,
          CropAspectRatioPreset.ratio16x9
        ]
            : [
          CropAspectRatioPreset.original,
          CropAspectRatioPreset.square,
          CropAspectRatioPreset.ratio3x2,
          CropAspectRatioPreset.ratio4x3,
          CropAspectRatioPreset.ratio5x3,
          CropAspectRatioPreset.ratio5x4,
          CropAspectRatioPreset.ratio7x5,
          CropAspectRatioPreset.ratio16x9
        ],
        androidUiSettings: AndroidUiSettings(
            toolbarTitle: 'トリミング',
            toolbarColor: Colors.deepOrange,
            toolbarWidgetColor: Colors.white,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: false),
        iosUiSettings: IOSUiSettings(
          title: 'トリミング',
        ));
    if (croppedFile != null) {
      imageFile = croppedFile;
      final time = DateTime
          .now()
          .millisecondsSinceEpoch;
      final directory = await getApplicationDocumentsDirectory();
      final path = directory.path;
      final copiedImageFile = await imageFile!.copy('$path/$time.png');
      // notifyListeners();

      // DBへ保存する為、base64文字列へ変換
      _base64ImageString =
          Base64Helper.base64String(copiedImageFile.readAsBytesSync());

      // 端末の一時ファイルを削除
      _deleteFile(imageFile!);

      setState(() {
        this.myImagePath = _base64ImageString;
      });
    }
  }

  void _clearImage() {
    imageFile = null;
    this.myImagePath = "";
    setState(() {
    });
  }
}
