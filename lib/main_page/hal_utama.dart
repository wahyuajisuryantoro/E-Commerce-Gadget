import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tokoonline/main_page/hal_produk.dart';
import 'package:tokoonline/widgets/big_text.dart';
import 'package:tokoonline/widgets/small_text.dart';

class HalUtama extends StatefulWidget {
  const HalUtama({Key? key}) : super(key: key);

  @override
  State<HalUtama> createState() => _HalUtamaState();
}

class _HalUtamaState extends State<HalUtama> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
      child: Container(
        margin: EdgeInsets.only(top: 45, bottom: 15),
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                BigText(text: "Indonesia", color: Colors.black),
                Row(
                  children: [
                    SmallText(text: "Magelang", color: Colors.grey,),
                    Icon(Icons.arrow_drop_down_rounded)
                  ],
                )
                
              ],
            ),
            Container(
              width: 45,
              height: 45,
              child: Icon(Icons.search, color: Colors.white,),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.black
              ),
            ),
          ],
        ),
      ),
    ),
    Expanded(child: SingleChildScrollView(child: HalProduk(),))
        ],
      )
    );
  }
}