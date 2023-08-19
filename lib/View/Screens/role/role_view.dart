import 'package:flutter/material.dart';

import 'widgets/role_grid_view_list.dart';

class RoleScreen extends StatelessWidget {
  const RoleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: RoleGridViewList(),
      ),
    );
  }
}
