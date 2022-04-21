import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker_flutter_course/common_widgets/show_alert_dialog.dart';

Future<void> showExceptionAlertDialog(
  BuildContext context, {
  @required required String title,
  @required required Exception exception,
}) =>
    showAlertDialog(
      context,
      title: title,
      content: exception.toString(),
      defaultActionText: 'OK',
    );

String? _message(Exception exception) {
  if (exception is FirebaseException) {
    return exception.message;
  }
  return exception.toString();
}
