import 'package:alpha_hill_demo/src/widgets/dialog_and_toasts/custom_snackbar.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class ServerException implements Exception {
  final String title = "serverExceptionTitleKey".tr;
  final String message = "serverExceptionMessageKey".tr;
  getMessage() => message;
  ServerException();
  showToast() {
    showMySnackBar(
      title: title,
      message: message,
      type: SnackType.error,
    );
  }
}

class PageNotFoundException implements Exception {
  final String title = "pageNotFoundExceptionTitleKey".tr;
  final String message = "pageNotFoundExceptionMessageKey".tr;
  getMessage() => message;
  PageNotFoundException();
  showToast() {
    showMySnackBar(
      title: title,
      message: message,
      type: SnackType.error,
    );
  }
}

class BadRequestException implements Exception {
  final String title = "badRequestExceptionTitleKey".tr;
  final String message = "badRequestExceptionMessageKey".tr;
  getMessage() => message;
  BadRequestException();
  showToast() {
    showMySnackBar(
      title: title,
      message: message,
      type: SnackType.error,
    );
  }
}

class AuthorizationException implements Exception {
  final String title = "authorizationExceptionTitleKey".tr;
  final String message = "authorizationExceptionMessageKey".tr;
  getMessage() => message;
  AuthorizationException();
  showToast() {
    showMySnackBar(
      title: title,
      message: message,
      type: SnackType.error,
    );
  }
}

class GeneralAPIException implements Exception {
  final String title = "generalAPIExceptionTitleKey".tr;
  final String? message;
  getMessage() => message;
  GeneralAPIException({this.message});
  showToast() {
    showMySnackBar(
      title: title,
      message: message ?? "generalAPIExceptionMessageKey".tr,
      type: SnackType.error,
    );
  }
}

class APIException implements Exception {
  final String message;
  getMessage() => message;
  APIException({required this.message});
  showToast() {
    showMySnackBar(
      title: "API EXCEPTION!",
      message: message,
      type: SnackType.error,
    );
  }
}

class FetchingDataException implements Exception {
  final String title = "Fetching Data!";
  final String message = "Fetching Data!";
  getMessage() => message;
  FetchingDataException();
  showToast() {
    showMySnackBar(
      title: title,
      message: message,
      type: SnackType.error,
    );
  }
}

class NoDataFoundException implements Exception {
  final String title = "No Data Found!";
  final String message = "No Data Found!";
  getMessage() => message;
  NoDataFoundException();
  showToast() {
    showMySnackBar(
      title: title,
      message: message,
      type: SnackType.error,
    );
  }
}

class DataToModelConversionException implements Exception {
  final String title = "Data To Model Conversion Exception!";
  String? message;
  getMessage() => message;
  DataToModelConversionException({this.message});
  showToast() {
    showMySnackBar(
      title: title,
      message: message ?? "Data To Model Conversion Exception",
      type: SnackType.error,
    );
  }
}
