
import 'package:flutter/material.dart' ;
import 'package:introduction_screen/introduction_screen.dart';
import 'home.dart' ;
class onboardingscreen extends StatefulWidget {
  const onboardingscreen({super.key});

  @override
  State<onboardingscreen> createState() => _onboardingscreenState();
}

class _onboardingscreenState extends State<onboardingscreen> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: IntroductionScreen(
          showNextButton: true,
          showSkipButton: true,
          skip: Text("skip"),
          next: Text("Next"),
          showDoneButton: true,
          done: Text("Done"),
          globalBackgroundColor: Colors.yellowAccent,
          freeze: false,
          animationDuration: 10,
          onSkip: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home(),)) ;
          },
          onDone: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home(),) ) ;
          },
          pages: [
            PageViewModel(
              title :"",
              body: "",
              decoration: const PageDecoration(
                    titlePadding: EdgeInsets.only(bottom: 120)
              ),
              image: Padding(
                padding: const EdgeInsets.only(top :318.0,left:20,right: 20),
                child: Transform.scale(scale :20,child: Image.asset('assets/image/image1.jpg')),
              ),

            ) ,
            PageViewModel(
              title :"",
              body: "",
              decoration: const PageDecoration(
                  titlePadding: EdgeInsets.only(bottom: 120)
              ),
              image: Padding(
                padding: const EdgeInsets.only(top :318.0,left:20,right: 20),
                child: Transform.scale(scale :20,child: Image.asset('assets/image/image2.jpg')),
              ),

            ),
            PageViewModel(
              title :"",
              body: "",
              decoration: const PageDecoration(
                  titlePadding: EdgeInsets.only(bottom: 120)
              ),
              image: Padding(
                padding: const EdgeInsets.only(top :318.0,left:20,right: 20),
                child: Transform.scale(scale :20,child: Image.asset('assets/image/image3.jpg')),
              ),

            ),
            PageViewModel(
              title :"",
              body: "",
              decoration: const PageDecoration(
                  titlePadding: EdgeInsets.only(bottom: 120)
              ),
              image: Padding(
                padding: const EdgeInsets.only(top :318.0,left:20,right: 20),
                child: Transform.scale(scale :20,child: Image.asset('assets/image/image4.jpg')),
              ),

            ),

          ],
        ),
      ),
    );
  }
}
