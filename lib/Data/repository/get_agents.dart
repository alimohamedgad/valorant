// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:valorant/Data/Model/charactar_model.dart';
import 'package:valorant/Data/Web_Services/web_services.dart';

class ValorantRepository {
  WebServices webServices;
  ValorantRepository(
    this.webServices,
  );

  Future<List<CharacterModel>> getAgents() async {
    final result = webServices.getAgents();
    return result;
  }
}
