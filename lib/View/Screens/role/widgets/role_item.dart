// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:valorant/Data/Model/charactar_model.dart';

class RoleItem extends StatelessWidget {
  final CharacterModel characterModel;
  const RoleItem({
    Key? key,
    required this.characterModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CachedNetworkImage(
          imageUrl: characterModel.role?.displayIcon ??
              'https://media.valorant-api.com/agents/roles/1b47567f-8f7b-444b-aae3-b0c634622d10/displayicon.png',
          width: MediaQuery.of(context).size.width,
          height: 0.2 * MediaQuery.of(context).size.height,
          fit: BoxFit.contain,
        ),
        const SizedBox(height: 12),
        Text(
          characterModel.role?.displayName ?? 'Initiator',
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
      ],
    );
  }
}
