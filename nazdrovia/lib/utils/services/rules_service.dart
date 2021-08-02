import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:nazdrovia/models/classes/rules_container.dart';

class RulesService {
  static Future<List<RulesContainer>> getRules() async {
    throw 'Not Implemented';
    // var res = await http.get(Consts.BASE_URL + Consts.RULES);
    // if (res.statusCode == 200) {
    //   return;
    // } else {
    //   throw 'Fallito il caricamento delle Rules';
    // }
  }
}
