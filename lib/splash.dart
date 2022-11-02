
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';


import 'home.dart';

class Splash extends StatefulWidget {
  const Splash({key}) : super(key: key); //Splash({Key? key}) : super(key: key);
  @override
  splash_state createState() => splash_state();
}
class splash_state extends State<Splash> {
  @override
  void initState() {
    super.initState();
    navigate_to_home();
  }
  navigate_to_home()async{
    await Future.delayed(Duration(seconds: 4),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyHomePage(title:'Coupons')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.network(
            'https://assets9.lottiefiles.com/packages/lf20_7psw7qge.json'
        ),),
    );
  }
}

