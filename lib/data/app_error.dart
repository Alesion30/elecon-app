// Flutter imports:
import 'package:flutter/foundation.dart';

// Package imports:
import 'package:firebase_core/firebase_core.dart';

enum AppErrorType {
  successful,
  emailAlreadyExists,
  wrongPassword,
  invalidEmail,
  userNotFound,
  userDisabled,
  operationNotAllowed,
  tooManyRequests,
  undefined,
}

class AppError {
  late String message;
  late AppErrorType type;

  AppError(Exception? error) {
    if (error is FirebaseException) {
      debugPrint(
        'AppError(DioError): '
        'type is ${error.code}, message is ${error.message}',
      );
      message = error.message!;
      switch (error.code) {
        case 'invalid-email':
          type = AppErrorType.invalidEmail;
          break;

        case 'wrong-password':
          type = AppErrorType.wrongPassword;
          break;

        case 'user-not-found':
          type = AppErrorType.userNotFound;
          break;

        case 'user-disabled':
          type = AppErrorType.userDisabled;
          break;

        case 'too-many-requests':
          type = AppErrorType.tooManyRequests;
          break;

        case 'operation-not-allowed':
          type = AppErrorType.operationNotAllowed;
          break;

        case 'email-already-in-use':
          type = AppErrorType.emailAlreadyExists;
          break;

        default:
          type = AppErrorType.undefined;
          break;
      }
    } else {
      debugPrint('AppError(UnKnown): $error');
      type = AppErrorType.undefined;
      message = 'AppError: $error';
    }
  }
}
