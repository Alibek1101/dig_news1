import 'package:dig_news/pages/Continue.dart';
import 'package:dig_news/pages/Sign_Up.dart';
import 'package:dig_news/widget/String.dart';
import 'package:flutter/material.dart';

class Intro_Page extends StatefulWidget {
  static final String id ="Intro_Page";
  const Intro_Page({super.key});

  @override
  State<Intro_Page> createState() => _Intro_PageState();
}

class _Intro_PageState extends State<Intro_Page> {
  late PageController _pageController;
  int currentIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: 0);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset("assets/photos/splash.png"),
            InkWell(
              onTap: (){
               Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context){
                 return Continue();
               }));
              },
            child: Text(
              "Skip",style: TextStyle(
              color: Colors.red.shade500,
              fontSize: 20
            ),
            ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
      body: Stack(
         alignment: Alignment.bottomCenter,
          children: [
          PageView(
          onPageChanged: (int page) {
        setState(() {
         currentIndex = page;
           });
         },
           controller: _pageController,
           children: [
            makePage(
      image: "assets/photos/intro1.png",
           title: Strings.stepOneTitle,
      content: Strings.stepOneContent),
      makePage(
        image: "assets/photos/intro2.png",
       title: Strings.stepTwoTitle,
          content: Strings.stepTwoContent),
          makePage(
     image: "assets/photos/intro2.png",
      title: Strings.stepThreeTitle,
     content: Strings.stepThreeContent),
       ],
        ),
           Container(
           margin: EdgeInsets.only(bottom: 60),
         child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
         children: _buildIndecator(),
            ),
              ),
      ] ,
       ),
        );
        }

           Widget makePage({image, title, content}) {
   return Container(
     padding: EdgeInsets.only(left: 50, right: 50, bottom: 60),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
        children: [
        Padding(
         padding: EdgeInsets.symmetric(horizontal: 20),
        child: Image.asset(image),
         ),
      SizedBox(
          height: 10,
         ),
        ]  ,
          ),
                Column(
       crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
    children: [
        Text(
        title,
     style: TextStyle(
color: Colors.white,
fontSize: 30,
fontWeight: FontWeight.bold),
),
SizedBox(
height: 30,
),
Text(
content,
style: TextStyle(color: Colors.white, fontSize: 20),
)
],
)
],
),
);
}

          Widget _indecator(bool isActive) {
return AnimatedContainer(
duration: Duration(milliseconds: 300),
height: 6,
width: isActive ? 30 : 6,
margin: EdgeInsets.only(right: 5),
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(5), color: Colors.white),
);
}


           List<Widget> _buildIndecator() {
List<Widget> indecators = [];
for (int i = 0; i < 3; i++) {
if (currentIndex == i) {
indecators.add(_indecator(true));
} else {
indecators.add(_indecator(false));
}
}
return indecators;
}
          }


