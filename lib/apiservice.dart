import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:periodic_table_dynamic/constants.dart';
import 'dart:convert';

import 'package:periodic_table_dynamic/database/periodic_table_element.dart';

class ApiService extends ChangeNotifier {

  late PeriodicTableElement? _data;

  PeriodicTableElement? get data => _data;

  Future<void> recieveData(int num) async {

    final response = await http.get(Uri.parse('${AppConstants.uriBase}/api/getElementInfo/$num'));

    if (response.statusCode == 200) {

      _data = PeriodicTableElement.fromJson(jsonDecode(response.body));

    } else {

      throw Exception('Failed to load data');

    }

  }

}

