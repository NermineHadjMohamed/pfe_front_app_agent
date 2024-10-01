import 'package:demo_app/models/login_response_model.dart';
import 'package:demo_app/pages/role_details.page.dart';
import 'package:demo_app/role/model/role.model.dart';
import 'package:demo_app/role/widgets/role.mock.dart';
import 'package:demo_app/role/widgets/role.widget.dart';
import 'package:flutter/material.dart';

class RolePage extends StatefulWidget {
  final LoginResponseModel loginResponse;

  const RolePage({super.key, required this.loginResponse});

  @override
  State<RolePage> createState() => _RolePageState();
}

class _RolePageState extends State<RolePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SpaceX App"),
      ),
    /*  floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              mockRoles.add(
                RoleModel(
                  roleName: "roleName",
                  roleDate: "roleDate",
                  roleImageUrl: "images/image_one.jpeg",
                  isSuccess: true,
                ),
              );
            });
          }),*/
      body: ListView.builder(
        //shrinkWrap: true,
        itemCount: widget.loginResponse.data?.roles?.length ?? 0,
        itemBuilder: (context, index) {
          final currentRole = widget.loginResponse.data?.roles?[index];
          if(currentRole != null) {
            return roleWidget(
              currentRole: currentRole,
              onRoleClicked: () {
                //Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => RoleDetails(
                      currentRole: currentRole,
                    ),
                  ),
                );
              });
          }else {
            return SizedBox.shrink(); // Return an empty widget if currentRole is null
          }
        },
      ),
      /*
      floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
      drawer: Drawer(
        child: Column(children: [
          Text("list1"),
        ],),
      ),*/
    );
  }
}