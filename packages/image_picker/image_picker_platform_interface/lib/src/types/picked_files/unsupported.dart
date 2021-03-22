import './base.dart';

/// A PickedFiles is a cross-platform, simplified File abstraction.
///
/// It wraps the bytes of a selected files, and its (platform-dependant) pathList.
class PickedFiles extends PickedFilesBase {
  /// Construct a PickedFiles object, from its `bytes`.
  ///
  /// Optionally, you may pass a `pathList`. See caveats in [PickedFilesBase.pathList].
  PickedFiles(List<String> pathList) : super(pathList) {
    throw UnimplementedError(
        'PickedFiles is not available in your current platform.');
  }
}