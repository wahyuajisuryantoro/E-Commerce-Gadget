import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class BigText extends StatelessWidget {
  BigText({Key? key, this.color = const Color(0xFF332d2), 
  required this.text,
  this.size=20,
  this.overflow=TextOverflow.ellipsis
  }) : super(key: key);
  Color? color;
  final String text;
  double size;
  TextOverflow overflow;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.w400,
        fontFamily: GoogleFonts.roboto().fontFamily,
        fontSize: size,
      ),
    );
  }
}