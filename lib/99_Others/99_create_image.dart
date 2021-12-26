import 'dart:ui' as ui;
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:esys_flutter_share/esys_flutter_share.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';

final convertWidgetToImageKey = GlobalKey();

class WidgetToImageConverter {
  Future<ByteData?> exportToImage(GlobalKey globalKey) async {
    final boundary =
        globalKey.currentContext!.findRenderObject() as RenderRepaintBoundary;
    try {
      final image = await boundary.toImage(
        pixelRatio: 3,
      );
      final byteData = await image.toByteData(
        format: ui.ImageByteFormat.png,
      );
      return byteData;
    } catch (exception) {
      await Future.delayed(
        const Duration(milliseconds: 1),
      );
      return await exportToImage(globalKey);
    }
  }
}

class shareProvider {
  Future<void> shareImageAndText(String text, GlobalKey globalKey) async {
    final bytes = await WidgetToImageConverter().exportToImage(globalKey);
    await Share.file(
        'shared image', 'share.png', bytes!.buffer.asUint8List(), 'image/png',);
  }
}

class saveImage {
  Future<void> saveLocalImage(GlobalKey globalKey) async {
    final bytes = await WidgetToImageConverter().exportToImage(globalKey);
    if (bytes != null) {
      final result =
          await ImageGallerySaver.saveImage(bytes.buffer.asUint8List());
      print(result);
    }
  }
}
