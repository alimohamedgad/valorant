// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valorant/Data/Model/charactar_model.dart';

import 'package:valorant/Data/repository/get_agents.dart';

import '../core/Constant/const.dart';

part 'charactar_state.dart';

class CharacterCubit extends Cubit<CharactarState> {
  ValorantRepository valorantRepository;
  CharacterCubit(this.valorantRepository) : super(CharactarInitial());
  List<CharacterModel> characters = [];
  Future<List<CharacterModel>> getAgents() async {
    emit(AgentsLoading());
    valorantRepository.getAgents().then((value) {
      characters = value;
      emit(AgentsSuccess());
    }).catchError((e) {
      if (kDebugMode) {
        print(e.toString());
      }
      emit(AgentsError());
    });
    return characters;
  }

  List<CharacterModel> get duplicatedList {
    Set seen = {};
    return characters
        .where((char) => seen.add(char.role?.displayIcon ?? testImage))
        .toList();
  }

  List<CharacterModel> getListByUUid(String uuid) {
    return characters.where((e) => e.role?.uuid == uuid).toList();
  }
}
