import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'file_reader.dart';

class JsonFileReader implements FileReader {
  @override
  Future<dynamic> read({required String filePath}) async {
    try {
      String fileContent = await rootBundle.loadString(filePath);

      return json.decode(fileContent);
    } on FlutterError catch (e) {
      throw FileReaderException('File not found: $filePath', e);
    } on FormatException catch (e) {
      throw FileReaderException('Invalid JSON format in: $filePath', e);
    } catch (e) {
      throw FileReaderException('Unexpected error reading file: $filePath', e);
    }
  }
}

class FileReaderException implements Exception {
  final String message;
  final Object? cause;

  FileReaderException(this.message, [this.cause]);

  @override
  String toString() {
    return 'FileReaderException: $message\nCause: $cause';
  }
}

extension JsonFileReaderExtensions on JsonFileReader {
  Future<List<dynamic>> readAsArray({required String filePath}) async {
    var data = await read(filePath: filePath);
    if (data is List<dynamic>) {
      return data;
    } else {
      throw FileReaderException('Expected JSON array in file: $filePath');
    }
  }
}
