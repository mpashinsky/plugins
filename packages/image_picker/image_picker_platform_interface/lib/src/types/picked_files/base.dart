import 'dart:convert';
import 'dart:typed_data';

import 'package:meta/meta.dart';

/// The interface for a PickedFiles.
///
/// A PickedFiles is a container that wraps the pathList of a selected
/// files by the user and (in some platforms, like web) the bytes
/// with the contents of the files.
///
/// This class is a very limited subset of dart:io [File], so all
/// the methods should seem familiar.
@immutable
abstract class PickedFilesBase {
  /// Construct a PickedFile
  PickedFilesBase(List<String> pathList);

  /// Get the path of the picked file.
  ///
  /// This should only be used as a backwards-compatibility clutch
  /// for mobile apps, or cosmetic reasons only (to show the user
  /// the path they've picked).
  ///
  /// Accessing the data contained in the picked file by its path
  /// is platform-dependant (and won't work on web), so use the
  /// byte getters in the PickedFile instance instead.
  List<String> get pathList {
    throw UnimplementedError('.path has not been implemented.');
  }

  /// Synchronously read the entire file contents as a string using the given [Encoding].
  ///
  /// By default, `encoding` is [utf8].
  ///
  /// Throws Exception if the operation fails.
  Future<String> readAsString({Encoding encoding = utf8}) {
    throw UnimplementedError('readAsString() has not been implemented.');
  }

  /// Synchronously read the entire file contents as a list of bytes.
  ///
  /// Throws Exception if the operation fails.
  Future<Uint8List> readAsBytes() {
    throw UnimplementedError('readAsBytes() has not been implemented.');
  }

  /// Create a new independent [Stream] for the contents of this file.
  ///
  /// If `start` is present, the file will be read from byte-offset `start`. Otherwise from the beginning (index 0).
  ///
  /// If `end` is present, only up to byte-index `end` will be read. Otherwise, until end of file.
  ///
  /// In order to make sure that system resources are freed, the stream must be read to completion or the subscription on the stream must be cancelled.
  Stream<Uint8List> openRead([int? start, int? end]) {
    throw UnimplementedError('openRead() has not been implemented.');
  }
}
