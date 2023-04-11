import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:tutor_me/constants/utils.dart';

void httpErrorHandler({
  required http.Response response,
  required BuildContext context,
  required onSuccess,
}) {
  switch (response.statusCode) {
    case 200:
      //ShowSnackbar(context, 'Account created successfully');
      onSuccess();
      break;
    case 400:
      ShowSnackbar(context, jsonDecode(response.body)['msg']);
      break;
    case 500:
      ShowSnackbar(context, jsonDecode(response.body)['error']);
      break;

    default:
      ShowSnackbar(context, response.body);
  }
}
