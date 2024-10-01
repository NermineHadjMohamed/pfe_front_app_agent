
import 'package:demo_app/models/login_response_model.dart';
import 'package:demo_app/role/model/role.model.dart';
import 'package:demo_app/role/widgets/role.widget.dart';
import 'package:flutter/material.dart';

class RoleDetails extends StatelessWidget {
  final Roles currentRole;
  const RoleDetails({super.key, required this.currentRole});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            roleWidget(
              currentRole: currentRole,
            ),
            Spacer(),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Go Back"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}