import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset("assets/images/imag.png",height: 450,width: 450,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(fixedSize:Size(200, 45),backgroundColor: Color(0xff424041),),
              onPressed: () {
                Navigator.pushNamed(context, "home");
            }, child: Text("LOGIN",style: TextStyle(color: Color(0xffFFFBFE),fontSize: 20),),

            ),
          ],
        ),
      ),
    );
  }
}
