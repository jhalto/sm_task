import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sm_task/widgets/categories_widgets.dart';
import 'package:sm_task/widgets/common_widgets.dart';
import 'package:sm_task/widgets/searchBar.dart';
import 'package:sm_task/widgets/suggestion_widget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
     SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
     SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

     return Scaffold(


      backgroundColor: Color(0xff11161F),
      body: Padding(
        padding: const EdgeInsets.only(left: 16,right: 16,top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         SizedBox(
                             width: MediaQuery.of(context).size.width*.70,

                             child: RichText(text: TextSpan(
                               children: [
                                 TextSpan(
                                   text: "Hello ",
                                   style: appStyle(20,white,FontWeight.bold),
                                 ),

                                 TextSpan(
                                   text: 'Rifat',
                                   style: appStyle(20,white)
                                 )
                               ]
                             )),
                         ),
                         Text("Let's watch today",style: appStyle(14,white.withOpacity(.50)),)
                       ],
                    ),

                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 46,
                      width: 46,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,

                        image: DecorationImage(image: AssetImage("lib/images/user.png",),fit: BoxFit.fill)
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               SearchBarStyle(),
                SizedBox(width: 10,),
                Container(
                  width: 43,
                  height: 43,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Color(0xffFF3440),

                  ),
                  child: Center(
                    child: Container(
                      height: 24,
                      width: 24,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("lib/images/Settings-adjust.png"))
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 2.0,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Categories",style: appStyleAkatab(18,white,FontWeight.w500),),
                  Text("See More",style: appStyle(14,white),)
                ],
              ),
            ),
            SizedBox(height: 10,),
            Categories(),
            SizedBox(height: 20,),
            Container(
              width: double.infinity,
              height: 181,
              child: SuggestionWidget(),

            )

          ],

        ),
      ),
    );
  }
}
