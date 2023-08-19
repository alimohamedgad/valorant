// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:valorant/Data/Model/charactar_model.dart';

class AgentsDetails extends StatelessWidget {
  final CharacterModel characters;
  const AgentsDetails({
    Key? key,
    required this.characters,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: CachedNetworkImage(
          imageUrl: characters.role?.displayIcon ??
              'https://media.valorant-api.com/agents/roles/1b47567f-8f7b-444b-aae3-b0c634622d10/displayicon.png',
          // width: double.infinity,
          height: 0.045 * MediaQuery.of(context).size.height,
          // height: 100,
          // width: 100,
        ),
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              CachedNetworkImage(
                imageUrl: characters.background,
                width: MediaQuery.of(context).size.width,
                height: 0.55 * MediaQuery.of(context).size.height,
                fit: BoxFit.cover,
              ),
              CachedNetworkImage(
                imageUrl: characters.fullPortrait,
                width: MediaQuery.of(context).size.width,
                height: 0.5 * MediaQuery.of(context).size.height,
                fit: BoxFit.cover,
              ),
            ],
          ),
          Center(
            child: Text(
              characters.displayName,
              style: const TextStyle(fontSize: 30),
            ),
          ),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: FittedBox(
              child: Center(
                child: Wrap(
                  spacing: 10,
                  children: [
                    ...List.generate(
                      characters.abilities.length,
                      (index) => Column(
                        children: [
                          CachedNetworkImage(
                            imageUrl: characters.abilities[index].displayIcon,
                            // width: MediaQuery.of(context).size.width,
                            // height: 0.001 * MediaQuery.of(context).size.height,
                            // fit: BoxFit.cover,
                            // height: 100,
                            width: 70,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            characters.abilities[index].displayName,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),

          // Wrap(
          //   children: [
          //     CachedNetworkImage(
          //       imageUrl: characters.abilities[index].displayIcon,
          // width: MediaQuery.of(context).size.width,
          //       height: 0.2 * MediaQuery.of(context).size.height,
          //       fit: BoxFit.cover,
          // height: 100,
          // width: 100,
          //     ),
          //   ],
          // )
        ],
      ),
    );
  }
}
