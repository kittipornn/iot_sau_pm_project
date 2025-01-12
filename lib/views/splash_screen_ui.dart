import 'package:flutter/material.dart';
import 'package:iot_sau_pm_project/views/signin_ui.dart';

class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({super.key});

  @override
  State<SplashScreenUI> createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {
  @override
  void initState() {
    // โค้ดหน่วงเวลาหน้าจอ
    Future.delayed(
      Duration(seconds: 3),
      //เมื่อครบเวลาให้เปิดไปหน้า siginUI แบบย้อนกลับไม่ได้
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => SigninUI(),
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 218, 89, 80),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: MediaQuery.of(context).size.width * 0.5,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.025,
            ),
            Text(
              'IoT SAU PM Thailand',
              style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.height * 0.025,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.025,
            ),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
