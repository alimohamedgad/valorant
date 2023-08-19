// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:valorant/Data/Model/charactar_model.dart';
import 'package:valorant/View/Screens/Agents/widgets/agents_item.dart';

class RoleDetailsView extends StatelessWidget {
  final List<CharacterModel> characterModel;
  const RoleDetailsView({
    Key? key,
    required this.characterModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                childAspectRatio: 2 / 2.4,
              ),
              itemCount: characterModel.length,
              itemBuilder: (context, index) {
                final valChar = characterModel[index];
                return Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: AgentsItem(
                    imageChar: valChar.fullPortrait,
                    displayIcon: valChar.background,
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
