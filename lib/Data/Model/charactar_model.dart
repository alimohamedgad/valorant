// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:equatable/equatable.dart';

import 'package:valorant/Data/Model/ability.dart';
import 'package:valorant/Data/Model/role.dart';

class CharacterModel extends Equatable {
  final String uuid;
  final String displayName;
  final String description;
  final String fullPortrait;
  final Role? role;
  final List<Abilities> abilities;
  final String background;
  final List<dynamic> backgroundGradientColors;
  const CharacterModel({
    required this.uuid,
    required this.displayName,
    required this.description,
    required this.fullPortrait,
    required this.role,
    required this.abilities,
    required this.background,
    required this.backgroundGradientColors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uuid': uuid,
      'displayName': displayName,
      'description': description,
      'fullPortrait': fullPortrait,
      'role': role?.toMap(),
      'abilities': abilities.map((x) => x.toMap()).toList(),
      'background': background,
      'backgroundGradientColors': backgroundGradientColors,
    };
  }

  factory CharacterModel.fromMap(Map<String, dynamic> map) {
    return CharacterModel(
        uuid: map['uuid'] ?? 'e370fa57-4757-3604-3648-499e1f642d3f',
        displayName: map['displayName'] ?? 'Gekko',
        description: map['description'] ?? '',
        fullPortrait: map['fullPortrait'] ??
            'https://media.valorant-api.com/agents/e370fa57-4757-3604-3648-499e1f642d3f/fullportrait.png',
        role: map['role'] == null ? null : Role.fromMap(map['role']),
        abilities: List.from(
          (map['abilities'] as List)
              .map<Abilities>((x) => Abilities.fromMap(x)),
        ),
        background: map['background'] ??
            'https://media.valorant-api.com/agents/e370fa57-4757-3604-3648-499e1f642d3f/background.png',
        backgroundGradientColors: map['backgroundGradientColors'] ?? []);
  }

  @override
  List<Object> get props {
    return [
      uuid,
      displayName,
      description,
      fullPortrait,
      role!,
      abilities,
      background,
      backgroundGradientColors
    ];
  }
}
