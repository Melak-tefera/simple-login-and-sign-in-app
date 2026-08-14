import 'package:supabase_flutter/supabase_flutter.dart';

class AuthService {
  //
  final SupabaseClient service= Supabase.instance.client;
  //signin with email and password
  Future<AuthResponse> signinwithpassword(String email, String password)async{
    return await service.auth.signInWithPassword(email: email,password: password);
  }
  //signup with email and password
  Future<AuthResponse> signupwithpassword(String email, String password)async{
    return await service.auth.signUp(email: email,password: password);
  }
  //signout
  Future signout()async{
    await service.auth.signOut();
  }
  // get current user
  String? currentuseremail(){
    final session= service.auth.currentSession;
    final user= session?.user;
    return user?.email;
    
  }
  
}