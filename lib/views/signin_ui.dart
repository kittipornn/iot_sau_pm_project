// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:iot_sau_pm_project/views/signup_ui.dart';

class SigninUI extends StatefulWidget {
  const SigninUI({super.key});

  @override
  State<SigninUI> createState() => _SigninUIState();
}

class _SigninUIState extends State<SigninUI> {
  //สร้างตัวแปลสำหรับเปิดปิดรหัสผ่าน
  bool pwdVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 240, 71, 59),
        title: Text(
          'Signin PM APP',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: 30.0,
            right: 30.0,
          ),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.025,
                ),
                Image.asset(
                  'assets/images/logo.png',
                  width: MediaQuery.of(context).size.width * 0.5,
                ),
                //---------------------------------------------------------//
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.025,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'ชื่อผู้ใช้',
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'username',
                    hintStyle: TextStyle(
                      color: Colors.grey[400],
                    ),
                    prefixIcon: Icon(
                      Icons.person,
                    ),
                  ),
                ),
                //------------------------------------------------//
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'รหัสผ่าน',
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                TextField(
                  obscureText: pwdVisible,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'password',
                    hintStyle: TextStyle(
                      color: Colors.grey[400],
                    ),
                    prefixIcon: Icon(
                      Icons.lock,
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          pwdVisible = !pwdVisible;
                        });
                      },
                      icon: Icon(
                        pwdVisible ? Icons.visibility : Icons.visibility_off,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.005,
                ),
                //--------------------------------------------------//
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'ลืมรหัสผ่าน',
                      style: TextStyle(
                        color: Colors.purple,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.005,
                ),
                //---------------------------------------------------//
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'signin',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    fixedSize: Size(
                      MediaQuery.of(context).size.width,
                      MediaQuery.of(context).size.height * 0.055,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.025,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'ยังไม่มีบัญชี?',
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignupUi(),
                          ),
                        );
                      },
                      child: Text(
                        'ลงทะเบียน',
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
