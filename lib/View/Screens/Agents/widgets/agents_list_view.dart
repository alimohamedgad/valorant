import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../cubit/charactar_cubit.dart';
import '../agents_details.dart';
import 'agents_item.dart';

class AgentsListView extends StatelessWidget {
  const AgentsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharacterCubit, CharactarState>(
        builder: (context, state) {
      final valCubit = BlocProvider.of<CharacterCubit>(context);
      if (state is AgentsSuccess) {
        return Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2 / 3,
            ),
            itemCount: valCubit.characters.length,
            itemBuilder: (context, index) {
              final valChar = valCubit.characters[index];

              return GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return AgentsDetails(
                        characters: valChar,
                      );
                    },
                  ));
                },
                child: AgentsItem(
                  imageChar: valChar.fullPortrait,
                  displayIcon: valChar.background,
                ),
              );
              // return ListTile(
              //   title: Text(
              //     valCubit.characters[index].description,
              //     style: const TextStyle(color: Colors.black, fontSize: 25),
              //   ),
              // );
            },
          ),
        );
      } else {
        return const Center(child: CircularProgressIndicator());
      }
    });
  }
}
