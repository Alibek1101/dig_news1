import 'package:dig_news/pages/Reset.dart';
import 'package:dig_news/pages/Welcome.dart';
import 'package:flutter/material.dart';
class Sign_Up extends StatefulWidget {
  static final String id = "Sign_Up";
  const Sign_Up({super.key});

  @override
  State<Sign_Up> createState() => _Sign_UpState();
}

class _Sign_UpState extends State<Sign_Up> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
     body: Container(
       margin: EdgeInsets.all(24),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Text("Sign Up",style: TextStyle(
             color: Colors.white,
             fontSize: 28,
             fontWeight: FontWeight.bold,
           ),),
           SizedBox(height: 15,),
           Text("It only takes a minute to create your account",style: TextStyle(
             color: Colors.grey,
             fontSize: 16,
             fontWeight: FontWeight.w500,
           ),),
           SizedBox(height: 36,),
           Text("Name",style: TextStyle(
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
                   hintText: "  Your name",
                 ),
               ),
           ),
           SizedBox(height: 20,),
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
           SizedBox(height: 160,),
           InkWell(
             onTap: (){
               Navigator.push(context,MaterialPageRoute(builder: (BuildContext context){
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
                 "Create account",style: TextStyle(
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
                Text("Already registered? ",style: TextStyle(
                  color: Colors.grey.shade500,
                  fontSize: 18,
                ),),
                InkWell(
                  onTap: (){
                   Navigator.pushNamed(context, Welcome.id);
                  },
                  child: Text(
                    "Login",style: TextStyle(
                    color: Colors.red.shade300,
                    fontSize: 18
                  ),
                  ),
                )
              ],
            ),
         ],
       ),
     ),
    );
  }
}

