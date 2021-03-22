import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import './base.dart';

/// A PickedFiles backed by a dart:io File.
class PickedFiles extends PickedFilesBase{
  final File _file;
  final List<String> _files;

  /// Construct a PickedFile object backed by a dart:io File.
  PickedFiles(List<String> pathList)
      : _files = pathList,
       _file = File(pathList[0]),
        super(pathList);

  @override
  String get path {
    return _file.path;
  }

  @override
  Future<String> readAsString({Encoding encoding = utf8}) {
    return _file.readAsString(encoding: encoding);
  }

  @override
  Future<Uint8List> readAsBytes() {
    return _file.readAsBytes();
  }

  @override
  Stream<Uint8List> openRead([int? start, int? end]) {
    return _file
        .openRead(start ?? 0, end)
        .map((chunk) => Uint8List.fromList(chunk));
  }
}