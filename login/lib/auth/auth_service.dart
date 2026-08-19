import 'package:supabase_flutter/supabase_flutter.dart';

class AuthService {
  final SupabaseClient client = Supabase.instance.client;

  Future<AuthResponse> signInWithPassword(
    String email,
    String password,
  ) {
    return client.auth.signInWithPassword(
      email: email,
      password: password,
    );
  }

  Future<AuthResponse> signUpWithPassword(
    String email,
    String password,
  ) {
    return client.auth.signUp(
      email: email,
      password: password,
    );
  }

  Future<void> signOut() {
    return client.auth.signOut();
  }

  String? get currentUserEmail {
    return client.auth.currentUser?.email;
  }

  User? get currentUser {
    return client.auth.currentUser;
  }

  Session? get currentSession {
    return client.auth.currentSession;
  }
}