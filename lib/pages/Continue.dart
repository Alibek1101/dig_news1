import 'package:dig_news/pages/Sign_Up.dart';
import 'package:flutter/material.dart';

class Continue extends StatefulWidget {
  const Continue({super.key});

  @override
  State<Continue> createState() => _ContinueState();
}

class _ContinueState extends State<Continue> {
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
            Image(image: AssetImage("assets/photos/digi.png")),
            SizedBox(height: 10,),
            Text("Welcome To DigiNews",style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 38,
            ),),
            SizedBox(height: 20,),
            InkWell(
              onTap: (){},
              child:
            Container(
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    child: Image.asset("assets/photos/img.png"),
                  ),
                  Expanded(
                    child: Text(
                        "Continue with Email",style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                      ),
                    ),
                ],
              ),
            )
            ),
            SizedBox(height: 20,),
            InkWell(
                onTap: (){},
                child:
                Container(
                  height: 70,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(14)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        child: Image.asset("assets/photos/facebook.png"),
                      ),
                      Expanded(
                        child: Text(
                          "Continue with Facebook",style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                        ),
                      ),
                    ],
                  ),
                )
            ),
            SizedBox(height: 20,),
            InkWell(
                onTap: (){},
                child:
                Container(
                  height: 70,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade900,
                      borderRadius: BorderRadius.circular(14)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        child: Image.asset("assets/photos/google.png"),
                      ),
                      Expanded(
                        child: Text(
                          "Continue with Google",style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                        ),
                      ),
                    ],
                  ),
                )
            ),
            SizedBox(height: 12,),
            Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text("Already have an account? ",style: TextStyle(
               color: Colors.grey,fontSize: 18
             ),),
             InkWell(
               onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                   return Sign_Up();
                 }));
               },
               child:
             Text("Sign Up",style: TextStyle(
               color: Colors.red.shade300,
               fontSize: 20,
               fontWeight: FontWeight.bold
             ),)
             ),
               ],
         ),
          ],
        ),
      ),
    );
  }
}
