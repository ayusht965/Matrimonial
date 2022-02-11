import 'package:flutter/material.dart';
import 'package:matrimonial/Pages/Auth/welcome.dart';
import 'package:matrimonial/Pages/home/home.dart';
import 'package:matrimonial/config/supabaseConstants.dart';
import 'package:supabase/supabase.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthState<T extends StatefulWidget> extends SupabaseAuthState<T> {
  @override
  void onUnauthenticated() {
    if (mounted) {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => Welcome(),
      ));
    }
  }

  @override
  void onAuthenticated(Session session) {
    if (mounted) {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => HomePage()));
    }
  }

  @override
  void onPasswordRecovery(Session session) {}

  @override
  void onErrorAuthenticating(String message) {
    context.showErrorSnackBar(message: message);
  }
}
