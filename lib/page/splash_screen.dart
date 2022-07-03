import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:tokoonline/main.dart';
import 'package:tokoonline/utility/colors.dart';
import 'package:tokoonline/widgets/big_text.dart';
import 'package:tokoonline/widgets/small_text.dart';

import '../widgets/responsive_button.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  List images = ["gambar_1.jpg", "gambar_2.jpg", "gambar_3.png"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: images.length,
            itemBuilder: ((context, index) {
              return Container(
                width: double.maxFinite,
                height: double.maxFinite,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/" + images[index]),
                  ),
                ),
                child: Container(
                  margin: const EdgeInsets.only(top: 0, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BigText(text: "New"),
                          BigText(
                            text: "Technology",
                            size: 30,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 250,
                            child: SmallText(
                              text:
                                  "New Technology means any invention, discovery, improvement, or innovation, that was not available to the acquiring agency on the effective date of the contract.",
                              color: AppColors.mainBlackColor,
                              size: 14,
                            ),
                          ),
                          SizedBox(height: 500,),
                          IconButton(onPressed: (){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                              return WelcomePage();
                            }));
                          }, icon: Icon(Icons.arrow_forward_ios,
                          size: 20,))  
                        ],
                      ),
                      SizedBox(height: 20,),
                      Column(
                        children: List.generate(3, (indexDots){
                          return Container(
                            margin: const EdgeInsets.only(bottom: 2),
                            width: 8,
                            height: index==indexDots?25:8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: index==indexDots?Colors.black:Colors.black.withOpacity(0.3)
                            ),
                          );
                        })
                      )
                    ],
                  ),
                ),
              );
            })));
  }
}
