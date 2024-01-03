import 'package:flutter/material.dart';
import 'BaseLoginScreen.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class LoginScreen extends BaseLoginScreen {
  LoginScreen({Key? key}) : super(key: key);

  @override
  String getTitle() {
    return "Login";
  }

  @override
  String getSubtitle() {
    return "Welcome to Realtime Translation Alpha";
  }

  @override
  void onNextButtonPressed(BuildContext context) {
    // Add logic for the "Next" button in the Login screen
  }

  @override
  Widget getInputField() {
    return InternationalPhoneNumberInput(
      onInputChanged: (PhoneNumber number) {
        // Handle phone number input changes if needed
      },
      selectorConfig: SelectorConfig(
        selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
      ),
    );
  }
}
