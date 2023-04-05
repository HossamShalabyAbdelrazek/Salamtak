import 'package:flutter/material.dart';

abstract class AuthRepo {
  Future loginwithgoogle();
  Future logingwithfacebook();
  Future loginwithuserandpassword();
  Future create_new_account();
}
