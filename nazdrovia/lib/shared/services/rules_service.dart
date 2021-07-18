import 'dart:io';

import 'package:nazdrovia/shared/models/models.dart';
import 'package:http/http.dart' as http;

class RulesService {
  static Future<List<RulesContainer>> getRules() async {
    // var res = await http.get(Consts.BASE_URL + Consts.RULES);
    // if (res.statusCode == 200) {
    //   return;
    // } else {
    //   throw 'Fallito il caricamento delle Rules';
    // }
  }
}
