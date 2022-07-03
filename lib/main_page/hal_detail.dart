import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:tokoonline/main_page/hal_produk.dart';
import 'package:tokoonline/utility/colors.dart';
import 'package:tokoonline/widgets/app_column.dart';
import 'package:tokoonline/widgets/app_icon.dart';
import 'package:tokoonline/widgets/detail_produk.dart';

import '../widgets/big_text.dart';
import '../widgets/icon_and_widgets.dart';
import '../widgets/small_text.dart';

class HalDetail extends StatelessWidget {
  const HalDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 350,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage("https://dummyjson.com/image/i/products/1/thumbnail.jpg"))),
              )),
          Positioned(
              top: 45,
              left: 20,
              right: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(()=>HalProduk());
                    },
                    child: AppIcon(icon: Icons.arrow_back_ios),
                  ),
                 
                  AppIcon(icon: Icons.shopping_cart_outlined)
                ],
              )),
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: 350 - 20,
              child: Container(
                padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20)),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppColumn(
                  text: "IPHONE 9",),
                  SizedBox(height: 20,),
                  BigText(text: "Introduce", color: Colors.black,),
                  SizedBox(height: 20,),
                  Expanded(
                    child: SingleChildScrollView(
                    child:DetailProduk(text: "Pada Windows, alasan mereka meloncati Windows 9 adalah karena dulu mereka sudah menggunakan angka 9 secara umum, yaitu pada Windows 95 dan Windows 98. Mereka secara kolektif disebut 9x. Untuk menghindari kerancuan maka Windows memilih meloncat dari Windows 8 ke Windows 10 Pada Iphone mereke tak hanya meloncati angka 9 namun juga mengubah penulisan menjadi angka 10 dalam romawi. Peloncatan angka 9 dikarenakan untuk merayakan 10 tahun dari peluncuran iPhone, akan mengganggu jika perayaan iPhone ke 10 namun produknya justru iPhone 9.") ,
                  )
                  )
                  
                  ],
                )
                 
              )),
        ],
      ),
      bottomNavigationBar: 
      Container(
        height: 120,
        padding: EdgeInsets.only(top: 30, bottom: 30, left: 20, right: 20),
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20*2),
            topRight: Radius.circular(20*2),
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white
                ),
                child: Row(
                  children: [
                    Icon(Icons.remove, color: AppColors.signColor,),
                    BigText(text: "0", color: Colors.black,),
                    SizedBox(width: 10/2,),
                    Icon(Icons.add, color: AppColors.signColor,),
                  ],
                ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
              child: BigText(text: "Rp. 6.000.000|Checkout", color: Colors.white,),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.orange
              ),
            )
          ],
        ),
      ),
    );
  }
}
