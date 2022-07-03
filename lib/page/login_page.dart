import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tokoonline/main_page/hal_utama.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tokoonline/main.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';


final GoogleSignIn _googleSignIn = GoogleSignIn(
  scopes: [
    'email'
  ]
);
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);



  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Map? _userData;
  GoogleSignInAccount? _currentUser;
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController=TextEditingController();

  @override
  void initState() {
    _googleSignIn.onCurrentUserChanged.listen((account) {
      setState(() {
        _currentUser = account;
      });
    });
    _googleSignIn.signInSilently();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    GoogleSignInAccount? user = _currentUser;
    if(user !=null){}
    return Scaffold(
      backgroundColor: Colors.white,
      body : SafeArea(
        bottom: false,
        child: ListView(
          padding: EdgeInsets.all(10),
          children: <Widget> [
            SizedBox(
              height: 15,
            ),
            Container(
              child: Text('9:41',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 15,
              ),
             ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset('assets/images/Mobile Signal.png'),
                Image.asset('assets/images/Wifi.png'),
                Image.asset('assets/images/Battery.png')
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(
                onPressed:(() {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                    return WelcomePage();
                  }));
                }
                ),
                child: Image.asset('assets/images/back.png',
                width: 20,
                height: 20,
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(5.0),
                  minimumSize: Size(5.0, 5.0),
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  )
                ),
                ),
                
              ],
              
            ),
            Container(
              alignment: Alignment.topLeft,
              child:Text('Welcome back! Glad to see you, Again!', 
            textAlign: TextAlign.left ,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 30,
              fontFamily: GoogleFonts.urbanist().fontFamily,
            ),
            ),
            ),
            SizedBox(
              height: 35,
            ),
            
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),),
                  labelText: 'Enter your email'  
                  ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),),
                  labelText: 'Enter your password',
                  suffixIcon: Icon(Icons.visibility_off_outlined)  
                  ),
              ),
            ),
           Container(
             padding:  EdgeInsets.all(10),
             child: Text('Forgot Password?',
             textAlign: TextAlign.right,
             style: TextStyle(color: Colors.black,
             fontSize: 14,
             fontFamily: GoogleFonts.urbanist().fontFamily),
             ),
           ),
          Container(
              height: 56,
              width: MediaQuery.of(context).size.width - 2 * 24,
              child: ElevatedButton(
                onPressed:(() {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) {
                    return HalUtama();
                  })));}
                ),
                child: Text('Login', 
                style:TextStyle(color: Colors.white,
                fontSize:15,
                fontWeight: FontWeight.w700,),),
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                  )),
                ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Text('Or Login with',
              style: TextStyle(color: Colors.grey,
              fontSize: 14,
              fontWeight: FontWeight.w600,
              fontFamily: GoogleFonts.urbanist().fontFamily,),
              textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: signIn,
                 child: 
                 Image.asset('assets/images/Google.png')
                 ),
                ElevatedButton(
                  onPressed:(() async {
                    final result = await FacebookAuth.i.login(
                      permissions: ["public_profile", "email"]
                    );
                    if (result.status == LoginStatus.success){
                      final requestData = await FacebookAuth.i.getUserData(
                        fields: "email, name",
                      );
                      setState(() {
                        _userData = requestData;
                      });
                    }
                  
                }),
                child: Image.asset('assets/images/Facebook.png'))
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              child: Text('Don’t have an account? Register Now',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black,
              fontSize: 15,
              fontFamily: GoogleFonts.urbanist().fontFamily
              ),
              ),
            ),
          ],
        ),
        )
    );
    
  }
}

Future<void> signIn()async{
  try{
    await _googleSignIn.signIn();
  }catch(e){
    print('Error signin in $e');
  }
}