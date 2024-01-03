import 'package:flutter/material.dart';
import 'BaseLoginScreen.dart';

class PhoneVerificationScreen extends BaseLoginScreen {
  @override
  String getTitle() {
    return "Phone Verification";
  }

  @override
  String getSubtitle() {
    return "Enter the 6-digit verification code sent to your phone";
  }

  @override
  void onNextButtonPressed(BuildContext context) {
    // Implement the logic for the "Next" button in the phone verification screen
  }

  @override
  Widget getInputField() {
    return TextField(
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        hintText: 'Confirmation Pin',
        hintStyle: TextStyle(color: Colors.grey),
        border: InputBorder.none,
      ),
    );
  }
}
