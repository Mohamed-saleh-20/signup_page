import 'package:flutter/material.dart';
import 'package:signup_page/Sign_up_page.dart';
import 'package:signup_page/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var formkey =GlobalKey <FormState>();
  bool isob=true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key:formkey ,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 170,
                ),
                Text(
                  "Hello ! ",
                  style: TextStyle(
                      color: Color.fromARGB(255, 87, 109, 169), fontSize: 35),
                ),
                SizedBox(),
                Text(
                  "Welcom Back",
                  style: TextStyle(
                      color: Color.fromARGB(255, 29, 47, 104),
                      fontSize: 38,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  validator: (value) {
      if (value!.isEmpty) {
        return "Please enter your email";
      }
      return null; 
    },
                  decoration: InputDecoration(
                      label: Text("Email"),
                      hintText: "  Enter Your Email",hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  validator: (value) {
      if (value!.isEmpty) {
        return "Please enter your Password";
      }else if(value.length<8){return "the Password atleast 8 number";}
      return null; 
    },
                  obscureText: isob,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    suffixIcon: IconButton(onPressed: (){setState(() {
                      isob=!isob;
                    });}, icon: isob? Icon(Icons.visibility_off_rounded ) :Icon(Icons.remove_red_eye_rounded)),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            " Forget Password",
                            style: TextStyle(
                                color: Color.fromARGB(255, 29, 47, 104),
                                fontSize: 20,
                                fontWeight: FontWeight.w800),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                          height: 55,
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                               if (formkey.currentState!.validate()) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()),
                          );
                        }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(255, 29, 47, 104),
                            ),
                            child: Text(
                              "Log IN",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 19,
                                  fontWeight: FontWeight.w600),
                            ),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      TextButton(
                          onPressed: () {
                     Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpPage()),
                          );},

                          child: Text(
                            "Sign UP ",
                            style: TextStyle(
                                color: Color.fromARGB(255, 29, 47, 104),
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
