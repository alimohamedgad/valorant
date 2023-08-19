import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valorant/View/Screens/role/widgets/role_details.dart';
import '../../../../cubit/charactar_cubit.dart';
import 'role_item.dart';

class RoleGridViewList extends StatelessWidget {
  const RoleGridViewList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharacterCubit, CharactarState>(
      builder: (context, state) {
        final valCubit = BlocProvider.of<CharacterCubit>(context);
        if (state is AgentsSuccess) {
          return GridView.builder(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2 / 2.4,
            ),
            itemCount: valCubit.duplicatedList.length,
            itemBuilder: (context, index) {
              final valChar = valCubit.duplicatedList[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return RoleDetailsView(
                        characterModel:
                            valCubit.getListByUUid(valChar.role!.uuid),
                      );
                    },
                  ));
                },
                child: RoleItem(
                  characterModel: valChar,
                ),
              );
            },
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
