import 'package:flutter/material.dart';
import 'package:login/pages/login_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';


class AuthGet extends StatelessWidget {
AuthGet({super.key});
  @override
  Widget build(BuildContext context) {

    return StreamBuilder(
    stream: Supabase.instance.client.auth.onAuthStateChange ,
    builder: (context, Snapshot) {

      if (Snapshot.connectionState== ConnectionState.waiting) {
        return const Scaffold(
          body: Center(child: CircularProgressIndicator()),
        );
        
      }
      final session= Snapshot.hasData ? Snapshot.data!.session : null;
      if (session!=null) {
        return ProfilePage();
        
      } else {
        return LoginPage();
        
      }
    }
    );
  }
}