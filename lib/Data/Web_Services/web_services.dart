import 'package:dio/dio.dart';
import 'package:valorant/Data/Model/charactar_model.dart';

import '../../core/Constant/const.dart';

class WebServices {
  Future<List<CharacterModel>> getAgents() async {
    final response = await Dio().get(apiUrl);
    if (response.statusCode == 200) {
      return (response.data['data'] as List)
          .map((e) => CharacterModel.fromMap(e))
          .toList();
    } else {
      return [];
    }
  }
}
