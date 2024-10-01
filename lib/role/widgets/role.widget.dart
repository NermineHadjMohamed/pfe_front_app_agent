
import 'package:demo_app/models/login_response_model.dart';
import 'package:demo_app/role/model/role.model.dart';
import 'package:flutter/material.dart';

roleWidget({
  required Roles currentRole,
  Function? onRoleClicked,
}) {
  return InkWell(
    onTap: () {
      if (onRoleClicked != null) onRoleClicked();
    },
    child: Card(
      child: ListTile(
        /*leading: Image.asset(
          currentRole.roleImageUrl,
          width: 68,
          height: 68,
        ),*/
        title: Text(currentRole.roleName.toString()),
        subtitle: Text(currentRole.description.toString()),
       /* trailing:
            currentRole.isSuccess ? Icon(Icons.done) : Icon(Icons.error),*/
      ),
    ),
  );
}