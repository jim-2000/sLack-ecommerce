import 'package:captaionshop/utils/CustomColor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  var _password;
  bool _obsecureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "sLACK",
          style: TextStyle(
            color: Mycolor.primary,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Center(
              child: OutlinedButton(
                onPressed: () {},
                child: Text(
                  "SKIP",
                  style: TextStyle(
                    color: Mycolor.dark,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ButtonStyle(),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hey",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Mycolor.grey,
                      // borderRadius: new BorderRadius.circular(20.0),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                      child: TextFormField(
                        decoration: InputDecoration(
                          suffixText: "Unique name ",
                          labelText: "Enter your Name",
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: new BorderSide(
                              color: Colors.teal,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: new BorderSide(
                              color: Colors.green,
                            ),
                          ),
                          suffixIcon: Padding(
                            padding: EdgeInsets.only(),
                            child: Icon(
                              Icons.perm_identity,
                              color: Colors.teal,
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter Your Name";
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Mycolor.grey,
                      // borderRadius: new BorderRadius.circular(20.0),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "Enter your Email",
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: new BorderSide(
                              color: Colors.teal,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: new BorderSide(
                              color: Colors.green,
                            ),
                          ),
                          suffixIcon: Padding(
                            padding: EdgeInsets.only(),
                            child: Icon(
                              Icons.mail,
                              color: Colors.teal,
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter Your Name";
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Mycolor.grey,
                      // borderRadius: new BorderRadius.circular(20.0),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                      child: TextFormField(
                        obscureText: _obsecureText,
                        onSaved: (val) {
                          _password = val;
                        },
                        decoration: InputDecoration(
                          labelText: "Enter your password",
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: new BorderSide(
                              color: Colors.teal,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: new BorderSide(
                              color: Colors.green,
                            ),
                          ),
                          suffixIcon: Padding(
                            padding: EdgeInsets.only(),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _obsecureText = !_obsecureText;
                                });
                              },
                              child: Icon(
                                _obsecureText ? Icons.visibility : Icons.lock,
                                color: Colors.teal,
                              ),
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter Your Name";
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(Size(
                            MediaQuery.of(context).size.width,
                            MediaQuery.of(context).size.height / 15)),
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xFFFF4c3B)),
                        elevation: MaterialStateProperty.all(20),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Processing Data....',
                                style: TextStyle(color: Mycolor.primary),
                              ),
                            ),
                          );
                        }
                      },
                      child: Text(
                        "SIGN UP",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            child: Center(
              child: Text(
                "Or sign up with",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  wordSpacing: 2,
                ),
              ),
            ),
            color: Mycolor.grey,
            margin: EdgeInsets.only(top: 25),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: new BorderRadius.circular(10.0),
                    color: Mycolor.light,
                  ),
                  padding: EdgeInsets.all(15),
                  child: GestureDetector(
                    child: Icon(
                      Ionicons.logo_apple,
                      color: Colors.black,
                      size: 40,
                    ),
                    onTap: () {
                      print("apple Tap");
                    },
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 15),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    borderRadius: new BorderRadius.circular(10.0),
                    color: Mycolor.light,
                  ),
                  padding: EdgeInsets.all(15),
                  child: GestureDetector(
                    child: Icon(
                      Icons.facebook,
                      size: 40,
                      color: Colors.blue,
                    ),
                    onTap: () {
                      print("facebook Tap");
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    borderRadius: new BorderRadius.circular(10.0),
                    color: Mycolor.light,
                  ),
                  padding: EdgeInsets.all(15),
                  child: GestureDetector(
                    child: Icon(
                      Ionicons.logo_google,
                      color: Colors.green,
                      size: 40,
                    ),
                    onTap: () {
                      print("Google Tap");
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Alrady have an Account? ",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                GestureDetector(
                  child: Text(
                    "Sign in",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey.shade700,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  onTap: () {
                    Get.toNamed("/signin", arguments: "Get is the best");
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Image.asset(
//           "assets/images/intro/four.jpg",
//           height: MediaQuery.of(context).size.height,
//           width: MediaQuery.of(context).size.width,
//           fit: BoxFit.cover,
//         ),
