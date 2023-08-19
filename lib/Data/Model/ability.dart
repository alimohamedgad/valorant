// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:equatable/equatable.dart';

class Abilities extends Equatable {
  final String displayName;
  final String description;
  final String displayIcon;
  const Abilities({
    required this.displayName,
    required this.description,
    required this.displayIcon,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'description': description,
      'displayIcon': displayIcon,
    };
  }

  factory Abilities.fromMap(Map<String, dynamic> map) {
    return Abilities(
      displayName: map['displayName'] ?? 'displayName',
      description: map['description'] ?? '',
      displayIcon: map['displayIcon'] ??
          'https://media.valorant-api.com/agents/e370fa57-4757-3604-3648-499e1f642d3f/abilities/ability1/displayicon.png',
    );
  }

  @override
  List<Object> get props => [displayName, description, displayIcon];
}
