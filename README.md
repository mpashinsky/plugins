# Fork of Flutter plugins

[![Build Status](https://api.cirrus-ci.com/github/flutter/plugins.svg)](https://cirrus-ci.com/github/flutter/plugins/master)

This repo is a fork of flutter_plugins with multiple image picking feature (works only for Android) for image_picker plugin.

Example:

PickedFiles pickedFiles = await _picker.getImages(
              source: source,
              maxWidth: maxWidth,
              maxHeight: maxHeight,
              imageQuality: quality,
            );
