import 'package:alpha_hill_demo/src/mvc/users/model/user_list_response_model.dart';
import 'package:alpha_hill_demo/utilities/apis/api_manager.dart';
import 'package:alpha_hill_demo/utilities/apis/api_utilities.dart';
import 'package:alpha_hill_demo/utilities/exception/exception_utilities.dart';
import 'package:either_dart/either.dart';

Future<Either<UserListResponseModel, Exception>> getUsersAPI() async {
  await Future.delayed(const Duration(seconds: 3));
  Either<dynamic, Exception> data =
      await API.callAPI(url: APIUtilities.userListUrl, type: APIType.tGet);

  if (data.isLeft) {
    try {
      return Left(UserListResponseModel.fromMap(data.left));
    } catch (e) {
      return Right(DataToModelConversionException());
    }
  } else {
    return Right(data.right);
  }
}
