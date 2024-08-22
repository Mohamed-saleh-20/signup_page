import 'package:flutter/material.dart';
import 'package:signup_page/login_page.dart';

class WelcomPage extends StatefulWidget {
  @override
  State<WelcomPage> createState() => _WelcomPageState();
}

class _WelcomPageState extends State<WelcomPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:  Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('https://s3-alpha-sig.figma.com/img/d302/0454/bc272b171ab10f1f564a5228b5993d31?Expires=1725235200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=hEZLinzDAcKxpUz7hbipobsiIhqhrC~odYlRPOBp6~H1tNvPNbQKCV1KiIbJ9V399yYAaDxmVBc3MPzjtbrwb-yACtJFXkY5tCPcu2CgvL3Apuqswvv3OstOg465vdMr3XqwemIXqag~q67ThAgdjHVhgvUEWee9V3QfLCD0LtLvvCDeG~wLbm0RauT94Uv5OQ0iDKIVj8TG~86q0ayBccAfa2YgbbX2M0KD5e8YJR80cSW3QOLadZs~ZowFgg12KKGFbvoNexGeaIEqzBg~MoCjdUOH95qVp95XEnJ0pqwppnvwHk-CB1aNtBDMANOtMokORIvpftzUDS937eQNvQ__'), // Update the path to your image
              fit: BoxFit.cover, // Cover the whole container
           colorFilter: ColorFilter.mode(const Color.fromARGB(255, 255, 255, 255), BlendMode.darken) ,opacity:1,),
          ),
          child: Center(
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Make Your's",
                  style: TextStyle(
                    color: Color.fromARGB(255, 87, 109, 169),
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  "Home Beautiful",
                  style: TextStyle(
                    color: Color.fromARGB(255, 29, 47, 104),
                    fontSize: 40,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  "The simple place where you \n discover Wonderfull furniture\n and Make your home better  ",
                  style: TextStyle(
                    color: Color.fromARGB(255, 87, 109, 169),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                   
                  ),
                ),
                SizedBox(height: 100),
                Container(height: 50,width:270,child: ElevatedButton(onPressed: (){ setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                }); }, style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),backgroundColor: const Color.fromARGB(255, 87, 109, 169),),child: Text("Get Started",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontSize: 19,fontWeight: FontWeight.w600),),))
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
