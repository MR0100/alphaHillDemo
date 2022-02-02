/// Error Utilities is the main class to manage all the errors.
abstract class ErrorUtilities {
  final String errorMessage;

  ErrorUtilities({required this.errorMessage});

  getErrorMessage() => errorMessage;
}

/// This are the subclass of errors.
/// TODO : CREATE OTHER CLASS AND EXTENDS WITH ERRORUTILITIES
class NoInternetError extends ErrorUtilities {
  NoInternetError()
      : super(
            errorMessage:
                "Your Internet is slow or might not established!\nPlease Check Internet Connection!");
}
