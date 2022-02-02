import 'package:alpha_hill_demo/src/mvc/users/controller/user_controller.dart';
import 'package:alpha_hill_demo/src/mvc/users/model/user_list_response_model.dart';
import 'package:alpha_hill_demo/utilities/exception/exception_utilities.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  final UserController _userController =
      Get.find<UserController>(tag: UserController().toString());

  @override
  void initState() {
    _userController.getUsersList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User List"),
      ),
      body: GetBuilder(
          init: _userController,
          builder: (_) {
            if (_userController.userDetailsData.isRight) {
              if (_userController.userDetailsData.right
                  is NoDataFoundException) {
                /// No Data Found Widget...
                return const Text("No Data Found!");
              } else if (_userController.userDetailsData.right
                  is FetchingDataException) {
                /// Fetching Data Widget...
                return const CircularProgressIndicator();
              }
              return const CircularProgressIndicator();
            } else {
              UserListResponseModel data = _userController.userDetailsData.left;
              return ListView.builder(
                itemCount: data.data.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(data.data[index].firstName),
                  );
                },
              );
            }
          }),
    );
  }
}
