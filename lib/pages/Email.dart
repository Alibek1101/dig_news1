import 'package:flutter/material.dart';

class Email extends StatefulWidget {
  const Email({super.key});

  @override
  State<Email> createState() => _EmailState();
}

class _EmailState extends State<Email> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Reset Password",style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 12,),
            Text("Enter your email and we will send you a link to reset your password",
              style: TextStyle(color: Colors.grey,fontSize: 18,),),
            SizedBox(height: 70,),
            Text("Email",style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w500
            ),),
            SizedBox(height: 10,),
            Container(
              height: 74,
              decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: BorderRadius.circular(14)),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "  Email",
                ),
              ),
            ),
            SizedBox(height: 240,),
            InkWell(
              onTap: (){},
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),),
                child: Center(
                  child: Text(
                    "Send OTP code",style: TextStyle(color: Colors.black,
                      fontSize: 22,fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
