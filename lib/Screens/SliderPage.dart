import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:doctor/Screens/Constant.dart';
import 'package:doctor/Screens/Login.dart';

import '../CustomWidgets.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
 int currentPage = 0;
String text1 = "Next";
String text2 = "Skip";
PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {

   return buildLiquidSlide();
    // return Scaffold(
    //   body: Column(
    //     children: [
    //       Expanded(
    //         flex: 4,
    //         child: PageView(
    //           controller: pageController,
    //
    //           onPageChanged: (val){
    //             currentPage = val;
    //             if(currentPage==2)
    //               {
    //                 text1 = "Sign In";
    //                 text2 = "Sign up";
    //
    //               }
    //             else{
    //               text1 = "Next";
    //               text2 = "Skip";
    //
    //             }
    //             setState(() {
    //
    //             });
    //           },
    //           scrollDirection: Axis.horizontal,
    //           children: [
    //             buildSinglePage('image', 'Find Doctors', 'Find a doctor and make an appointment online'),
    //             buildSinglePage('image', 'Find Hospitals', 'Find Hospital Near by your Location Have a best treatment there'),
    //             buildSinglePage('image', 'Contact', '7000 +  doctors with over 50+ specialities available'),
    //           ],
    //         ),
    //       )
    //       ,Container(
    //         width: 60,
    //         color: Colors.white,
    //         height: 20,
    //         child: Row(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           mainAxisSize: MainAxisSize.min,
    //           children: [
    //             buildDotindicator(0),
    //             buildDotindicator(1),
    //             buildDotindicator(2),
    //           ],
    //         ),
    //       ),
    //       SizedBox(
    //         height: 20,
    //       ),
    //       Expanded(
    //
    //         child:Column(
    //           crossAxisAlignment: CrossAxisAlignment.center,
    //           mainAxisSize: MainAxisSize.max,
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: [
    //             CustomWidgets.CustomButtonColored(onpressed: (){
    //               if(currentPage==2)
    //                 {
    //                   Navigator.push(context, MaterialPageRoute(
    //                       builder: (context)=>LoginPage()
    //                   ));
    //                 }
    //               else{
    //                 currentPage+=1;
    //                 changePage(currentPage);
    //                 setState(() {
    //
    //                 });
    //
    //               }
    //             },color: Colors.teal,text: text1),
    //             CustomWidgets.CustomButtonWhite(onpressed: () {
    //               if(currentPage==2)
    //               {
    //                 Navigator.push(context, MaterialPageRoute(
    //                   builder: (context)=>LoginPage()
    //                 ));
    //               }
    //               else{
    //                 currentPage=2;
    //                 changePage(currentPage);
    //                 setState(() {
    //
    //                 });
    //
    //
    //               }
    //             },text: text2, )
    //           ],
    //         ),
    //       )
    //     ],
    //   ),
    // );
  }

  changePage(int page){
    pageController.animateToPage(page, duration: Duration(milliseconds: 200), curve: Curves.bounceIn);
  }
  buildDotindicator(int val){
    return Flexible(
      flex: 1,
      child: Container(
        height: 12,
        decoration: BoxDecoration(
            color: (val==currentPage)?primary:Colors.grey,
            shape: BoxShape.circle
        ),
      ),
    );

  }
  buildSinglePage(String image,String title,String desc,Color color)
  {
    return Material(
color: color,
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white
              ),
            ),
          ),

          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                title,style: Theme.of(context).textTheme.headline4.copyWith(color: Colors.white),textAlign: TextAlign.center,),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                desc,style: Theme.of(context).textTheme.headline6.copyWith(fontSize : 15,color: Colors.white),textAlign: TextAlign.center,),
            ),
          )
        ],
      ),
    );
  }


  buildLiquidSlide()
  {
    return SafeArea(
      child: Scaffold(
        body: LiquidSwipe(

          waveType: WaveType.liquidReveal,

            pages: [
          buildSinglePage('image', 'Find Doctors', 'Find a doctor and make an appointment online',Colors.orange),
          buildSinglePage('image', 'Find Hospitals', 'Find Hospital Near by your Location Have a best treatment there',Colors.green),
          buildSinglePage('image', 'Contact', '7000 +  doctors with over 50+ specialities available',Colors.blue),
        ]),
      ),
    );
  }
}
