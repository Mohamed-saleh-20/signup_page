import 'package:flutter/material.dart';
import 'package:signup_page/home_page.dart';
import 'package:signup_page/login_page.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  String? name;
  String _password = '';
  String _confirmPassword = '';
  bool isObscure = true;
  bool isobs = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 170),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Welcome!",
                        style: TextStyle(
                          color: Color.fromARGB(255, 29, 47, 104),
                          fontSize: 38,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 45),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter your Name";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: "Name",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter your Email";
                      }
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "Email",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter your Password";
                      } else if (value.length < 8) {
                        return "The password must be at least 8 characters";
                      }
                      _password = value;
                      return null;
                    },
                    obscureText: isobs,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isobs = !isobs;
                          });
                        },
                        icon: isobs
                            ? Icon(Icons.visibility_off_rounded)
                            : Icon(Icons.remove_red_eye_rounded),
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please confirm your password";
                      } else if (value != _password) {
                        return "Passwords do not match";
                      }
                      _confirmPassword = value;
                      return null;
                    },
                    obscureText: isObscure,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: 'Confirm Password',
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isObscure = !isObscure;
                          });
                        },
                        icon: isObscure
                            ? Icon(Icons.visibility_off_rounded)
                            : Icon(Icons.remove_red_eye_rounded),
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 30),
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 55,
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()),
                                );
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              backgroundColor:
                                  const Color.fromARGB(255, 87, 109, 169),
                            ),
                            child: Text(
                              "SIGN UP",
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 19,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Already have an account?",
                              style: TextStyle(
                                color: const Color.fromARGB(251, 124, 119, 119),
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginPage()),
                                );
                              },
                              child: Text(
                                "SIGN IN",
                                style: TextStyle(
                                  color:Color.fromARGB(255, 29, 47, 104),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
