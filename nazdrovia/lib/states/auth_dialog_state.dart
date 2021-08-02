import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class AuthDialogState with ChangeNotifier {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a `GlobalKey<FormState>`,
  // not a GlobalKey<MyCustomFormState>.
  final formKey = GlobalKey<FormState>();
  var isLoading = false;
  double? loaderValue = 0.0;

  String? emptyValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Il campo non può essere vuoto';
    }
    return null;
  }

  void closeDialog(BuildContext context) {
    context.popRoute();
  }

  void submit(BuildContext context) {
    // Validate returns true if the form is valid, or false otherwise.
    if (formKey.currentState!.validate()) {
      isLoading = true;
      loaderValue = null;
      notifyListeners();
      //TODO CALL API
      Future.delayed(Duration(seconds: 2), () {
        isLoading = false;
        loaderValue = 0.0;
        notifyListeners();
      });
    }
  }
}
