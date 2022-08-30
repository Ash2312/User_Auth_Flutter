import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:user_auth/welcome_page.dart';

import 'login_page.dart';

class AuthController extends GetxController{
  static AuthController instance = Get.find();
  late Rx<User?> _user;
  // this will contain our user information 
  FirebaseAuth auth = FirebaseAuth.instance;
  @override
  void onReady(){
    super.onReady();
    _user = Rx<User?>(auth.currentUser);
    _user.bindStream(auth.userChanges());
    ever(_user, _initialScreen);
  }
  _initialScreen(User? user){
    if(user==null){
      print("Login page");
      Get.offAll(()=>LoginPage());
    }else{
      Get.offAll(()=>WelcomePage(email:user.email!));
    }

  }
  void register(String email, password){
    try{
      auth.createUserWithEmailAndPassword(email: email, password: password);

    }catch(e){
      Get.snackbar("About User", "User Message",
      backgroundColor: Colors.blueAccent,
      snackPosition: SnackPosition.TOP,
      titleText: Text("Account could not be created",
      style: TextStyle(
        color: Colors.white
      ),),
      messageText: Text(e.toString(),
      style: TextStyle(
        color: Colors.white
      ),));

    }

  }
  void login(String email, password){
    try{
      auth.signInWithEmailAndPassword(email: email, password: password);

    }catch(e){
      Get.snackbar("About Login", "Login Message",
      backgroundColor: Colors.blueAccent,
      snackPosition: SnackPosition.TOP,
      titleText: Text("Account could not be created",
      style: TextStyle(
        color: Colors.white
      ),),
      messageText: Text(e.toString(),
      style: TextStyle(
        color: Colors.white
      ),));

    }

  }
  void logout() async{
    await auth.signOut();
  }

}