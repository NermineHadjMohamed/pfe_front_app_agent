
import 'package:demo_app/role/model/role.model.dart';

List<RoleModel> mockRoles = List.generate(
  6,
  (index) {
    return RoleModel(
      roleName: "Role one $index",
      roleDate: "12/10/2024",
      roleImageUrl:
          index % 2 == 0 ? "images/image_one.jpeg" : "images/image_two.png",
      isSuccess: index % 2 == 0,
    );
  },
);