// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:equatable/equatable.dart';

class Role extends Equatable {
  final String uuid;
  final String displayName;
  final String description;
  final String displayIcon;
  const Role({
    required this.uuid,
    required this.displayName,
    required this.description,
    required this.displayIcon,
  });

  toMap() {
    return {
      'uuid': uuid,
      'displayName': displayName,
      'description': description,
      'displayIcon': displayIcon,
    };
  }

  factory Role.fromMap(map) {
    return Role(
      uuid: map['uuid'] ?? '1b47567f-8f7b-444b-aae3-b0c634622d10',
      displayName: map['displayName'] ?? 'Initiator',
      description: map['description'] ?? '',
      displayIcon: map['displayIcon'] ??
          'https://media.valorant-api.com/agents/roles/1b47567f-8f7b-444b-aae3-b0c634622d10/displayicon.png',
    );
  }

  @override
  List<Object> get props => [
        uuid,
        displayName,
        description,
        displayIcon,
      ];
}
