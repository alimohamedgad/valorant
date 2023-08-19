// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:valorant/core/Constant/names.dart';
import 'widgets/agents_list_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        title: Image.asset(
          Names.valoLogo,
          height: 45,
        ),
        centerTitle: true,
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AgentsListView(),
        ],
      ),
    );
  }
}
