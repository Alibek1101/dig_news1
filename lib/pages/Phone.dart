import 'package:flutter/material.dart';
import 'package:phone_text_field/phone_text_field.dart';

class Phone extends StatefulWidget {
  const Phone({super.key});

  @override
  State<Phone> createState() => _PhoneState();
}

class _PhoneState extends State<Phone> {
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
            Text("Enter your phone number and we will send you a link to reset your password",
            style: TextStyle(color: Colors.grey,fontSize: 18,),),
            SizedBox(height: 70,),
            Text("Phone Number",style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w500
            ),),
            SizedBox(height: 10,),
            Container(
              child: PhoneTextField(
                locale: const Locale('en'),
                decoration: const InputDecoration(
                  filled: true,
                  contentPadding: EdgeInsets.zero,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(),
                  ),
                  prefixIcon: Icon(Icons.phone),
                  labelText: "Phone number",
                ),
                searchFieldInputDecoration: const InputDecoration(
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(),
                  ),
                  suffixIcon: Icon(Icons.search),
                  hintText: "Search country",
                ),
                initialCountryCode: "AE",
                onChanged: (phone) {
                  debugPrint(phone.completeNumber);
                },
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
