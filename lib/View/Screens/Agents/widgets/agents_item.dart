// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class AgentsItem extends StatelessWidget {
  // final Color color;
  final String imageChar;
  final String? displayIcon;
  const AgentsItem({
    Key? key,
    // required this.color,
    required this.imageChar,
    required this.displayIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        // gradient: const LinearGradient(
        //   colors: [
        //     kFirstColor,
        //     kSecondColor,
        //     kThirdColor,
        //     kFourColor,
        //   ],
        // ),
      ),
      child: Stack(
        children: [
          CachedNetworkImage(
            imageUrl: displayIcon!,
            // width: 0.08 * MediaQuery.of(context).size.width,
            // height: 0.08 * MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Center(
            child: CachedNetworkImage(
              imageUrl: imageChar,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
        ],
      ),
    );
  }
}
