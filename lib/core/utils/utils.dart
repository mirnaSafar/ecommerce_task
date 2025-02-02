import 'package:flutter/material.dart';

import '../common/errors/failures.dart';
import '../common/strings.dart';

String mapFailureToMessage({required Failure failure}) {
  switch (failure) {
    case ServerFailure():
      return SERVER_FAILURE_MESSAGE;
    case CacheFailure():
      return CACHE_FAILURE_MESSAGE;
    case OfflineFailure():
      return OFFLINE_FAILURE_MESSAGE;
    default:
      return "Unexpected Error";
  }
}

void showCustomSnackBar(BuildContext context, String message, {Color? color}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      backgroundColor: color ?? Colors.green,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(16),
      duration: Duration(seconds: 2),
    ),
  );
}

Widget buildRetryWidget(String message, Function retyrFunction) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      IconButton(
          onPressed: () {
            retyrFunction();
          },
          icon: Icon(Icons.replay_outlined)),
      Text(message),
    ],
  );
}
