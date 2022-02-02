import 'package:alpha_hill_demo/src/mvc/users/api/get_users_api.dart';
import 'package:alpha_hill_demo/src/mvc/users/model/user_list_response_model.dart';
import 'package:alpha_hill_demo/utilities/exception/exception_utilities.dart';
import 'package:either_dart/either.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class UserController extends GetxController {
  Either<UserListResponseModel, Exception> _userDetailsData =
      Right(NoDataFoundException());
  Either<UserListResponseModel, Exception> get userDetailsData =>
      _userDetailsData;
  set userDetailsData(Either<UserListResponseModel, Exception> value) {
    _userDetailsData = value;
    update();
  }

  getUsersList() async {
    userDetailsData = Right(FetchingDataException());
    Either<UserListResponseModel, Exception> data = await getUsersAPI();
    userDetailsData = data;
  }
}
