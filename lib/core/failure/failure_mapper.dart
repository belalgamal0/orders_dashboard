import 'failure.dart';

class FailureMapper {
  static String mapFailureToMessage({required Failure failure}) {
    switch (failure.runtimeType) {
      case ServerFailure _:
        return "SERVER_FAILURE_MESSAGE";
      default:
        return 'Unexpected error';
    }
  }
}
