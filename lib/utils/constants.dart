import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

// Supabase client
final supabase = Supabase.instance.client;

// Supabase keys
const anonkey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJra3JrZnFqb2tiYmFub2d1dHh1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzM1ODk2MTgsImV4cCI6MjA0OTE2NTYxOH0.s83C31AGO7IsL3fPr5HYN3xwGUdDjq7wK4YDHMc0a2Y';
const urlkey  = 'https://rkkrkfqjokbbanogutxu.supabase.co';

// Simple preloader inside a Center widget
const preloader =
    Center(child: CircularProgressIndicator(color: Colors.orange));

// Simple sized box to space out form elements
const spacer = SizedBox(width: 16, height: 16);

// Some padding for all the forms to use
const formPadding = EdgeInsets.symmetric(vertical: 20, horizontal: 16);

// Error message to display the user when unexpected error occurs.
const unexpectedErrorMessage = 'Unexpected error occurred.';

// Basic theme to change the look and feel of the app
final appTheme = ThemeData.light().copyWith(
  primaryColorDark: Colors.orange,
  appBarTheme: const AppBarTheme(
    elevation: 1,
    backgroundColor: Colors.white,
    iconTheme: IconThemeData(color: Colors.black),
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontSize: 18,
    ),
  ),
  primaryColor: Colors.orange,
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: Colors.orange,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: Colors.orange,
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    floatingLabelStyle: const TextStyle(
      color: Colors.orange,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Colors.grey,
        width: 2,
      ),
    ),
    focusColor: Colors.orange,
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Colors.orange,
        width: 2,
      ),
    ),
  ),
);

// Set of extension methods to easily display a snackbar
extension ShowSnackBar on BuildContext {
  // Displays a basic snackbar
  void showSnackBar({
    required String message,
    Color backgroundColor = Colors.white,
  }) {
    ScaffoldMessenger.of(this).showSnackBar(SnackBar(
      content: Text(message),
      backgroundColor: backgroundColor,
    ));
  }

  // Displays a red snackbar indicating error
  void showErrorSnackBar({required String message}) {
    showSnackBar(message: message, backgroundColor: Colors.red);
  }
}
