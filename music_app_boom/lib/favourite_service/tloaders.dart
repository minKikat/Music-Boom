import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TLoaders {
  static void customToast({required String message}) {
    Get.snackbar(
      'Notification',
      message,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.black,
      colorText: Colors.white,
    );
  }
}
