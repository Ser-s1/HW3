import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_screen.dart';
void main(){
  runApp(MainApp());
}
class MainApp extends StatelessWidget {
 const MainApp({super.key});
  Widget build(BuildContext context){
    return MaterialApp(
      home:HomeScreen()
    );
    
  }



}
