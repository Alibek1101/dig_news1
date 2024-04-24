import 'package:dig_news/pages/Reset.dart';
import 'package:flutter/material.dart';
class Welcome extends StatefulWidget {
  static final String id="Welcome";
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body:Container(
        margin: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Welcome back!",style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold
            ),),
            Text("Enter your email addres and password to login",style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
                fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 40,),
            Text("Email",style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w700
            ),),
            SizedBox(height: 8,),
            Container(
              height: 60,
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(14),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "  Your Email addres",
                ),
              ),
            ),
            SizedBox(height: 20,),
            Text("Password",style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w700
            ),),
            SizedBox(height: 8,),
            Container(
              height: 60,
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(14),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "  Your Password",
                ),
              ),
            ),
            SizedBox(height: 12,),
            InkWell(
              onTap: (){},
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("Forgot password",style: TextStyle(
                      color: Colors.red.shade300,
                      fontSize: 17
                    ),
                  )
            ]
              ),
            ),
            SizedBox(height: 220,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                  return Reset();
                }));
              },
              child: Container(
              height: 66,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Center(
                child: Text(
                  "Login",style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w700
                ),
                ),
              ),
            ),),
            SizedBox(height:20 ,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have in account? ",style: TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: 18
                ),),
                InkWell(
                  onTap: (){},
                  child: Text(
                    "Sign Up",style: TextStyle(
                      color: Colors.red.shade300,
                      fontSize: 18
                  ),
                  ),
                )
              ],
            ),
                ],
              ),
            )
    );
  }
}
