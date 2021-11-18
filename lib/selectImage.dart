import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'profileDb.dart';
import 'base64_helper.dart';

class HomeScreenModel extends ChangeNotifier {
  late String _base64ImageString = '';

  String get base64ImageString => _base64ImageString;

  /// 画像ファイル、ストレージアップロード関数
  Future selectImage() async {
    final time = DateTime.now().millisecondsSinceEpoch;
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(
      source: ImageSource.gallery,
      maxHeight: 100,
      maxWidth: 800,
    );
    if (pickedFile == null) return "";
    final imageFile = File(pickedFile.path);

    final directory = await getApplicationDocumentsDirectory();
    final path = directory.path;
    final copiedImageFile = await imageFile.copy('$path/$time.png');
    notifyListeners();

    // DBへ保存する為、base64文字列へ変換
    _base64ImageString =
        Base64Helper.base64String(copiedImageFile.readAsBytesSync());

    // 端末の一時ファイルを削除
    _deleteFile(imageFile);
    return _base64ImageString;
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
  void _deleteFile(
      File targetFile,
      ) async {
    try {
      final file = await _getLocalFile(targetFile);
      await file!.delete();
    } catch (e) {
      debugPrint('Delete file error: $e');
    }
  }
}