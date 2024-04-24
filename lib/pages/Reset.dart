import 'package:dig_news/pages/Email.dart';
import 'package:dig_news/pages/Phone.dart';
import 'package:flutter/material.dart';
class Reset extends StatefulWidget {
  const Reset({super.key});

  @override
  State<Reset> createState() => _ResetState();
}

class _ResetState extends State<Reset> {
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
    Text("Reset Password",style: TextStyle(
    color: Colors.white,
    fontSize: 28,
    fontWeight: FontWeight.bold
    ),),
    SizedBox(height: 12,),
    Text("Select varifcation method eng we will send verification code",style: TextStyle(
    color: Colors.grey,
    fontSize: 18,
    fontWeight: FontWeight.bold
    ),),
    SizedBox(height: 40,),
      InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
            return Email();
          }));
        },
          child: Container(
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.grey,width: 2)),
        child: Row(
          children: [
            SizedBox(width: 14,),
            Container(
              height: 100,
              width: 100,
              child: Image.asset("assets/photos/email.png",fit: BoxFit.cover,),
            ),
            SizedBox(width: 18,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Email",style: TextStyle(color: Colors.white,
                  fontSize: 25,fontWeight: FontWeight.w700),),
                  Text("Send to your email",style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18
                    ),
                    ),
                ],
              ),
            )
          ],
        ),
    )
      ),
      SizedBox(height: 50,),
      InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext){
              return Phone();
            }));
          },
          child: Container(
            height: 120,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: Colors.grey,width: 2)),
            child: Row(
              children: [
                SizedBox(width: 14,),
                Container(
                  height: 100,
                  width: 100,
                  child: Image.asset("assets/photos/phone.png",fit: BoxFit.cover,),
                ),
                SizedBox(width: 18,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Phone Number",style: TextStyle(color: Colors.white,
                          fontSize: 25,fontWeight: FontWeight.w700),),
                      Text("Send to your phone number",style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18
                      ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
      ),
      SizedBox(height: 178,),
      InkWell(
        onTap: (){},
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14),),
          child: Center(
            child: Text(
              "Continue",style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),
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
