import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:ttos_app/screen/main/tab/stock/vo/vo_simple_stock.dart';

import '../../screen/opensource/vo_package.dart';

class LocalJson {
  static Future<T> getObject<T>(String filePath) async {
    final string = await getJsonString(filePath);
    final json = jsonDecode(string);
    return _tryConverting(json);
  }

  static Future<List<T>> getObjectList<T>(String filePath) async {
    final string = await getJsonString(filePath);
    final json = jsonDecode(string);
    if (json is List) {
      return json.map<T>((e) => _tryConverting(e)).toList();
    }
    return [];
  }

  static dynamic getJson(String filePath) async {
    final string = await getJsonString(filePath);
    return jsonDecode(string);
  }

  static Future<String> getJsonString(String filePath) async {
    return await rootBundle.loadString('assets/$filePath');
  }
}

T _tryConverting<T>(dynamic json) {
  switch (T) {
    case Package:
      return Package.fromJson(json) as T;
    case SimpleStock:
      return SimpleStock.fromJson(json) as T;
    default:
      throw Exception(
          "Unsupported type: $T. Please check _tryConverting method");
  }
}
