part of '../main.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24),
          children: [
            Image.asset("assets/images/gambar_4.jpg",
            height: 297,
            width: 375,
            fit: BoxFit.fill),
            SizedBox(
              height: 29,
            ),
            Container(
              height: 56,
              width: MediaQuery.of(context).size.width - 2 * 24,
              child: ElevatedButton(
                onPressed:(() {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) {
                    return LoginPage();
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
              height:15,
            ),
            Container(
              height: 56,
              width: MediaQuery.of(context).size.width - 2 * 24,
              child: ElevatedButton(
                onPressed:(() {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) {
                    return RegisterPage();
                  })));}
                ),
                child: Text('Register', 
                style:TextStyle(color: Colors.black,
                fontSize:15,
                fontWeight: FontWeight.w700,
                ),

                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                  )
                  ),
                ),
            ),
            SizedBox(
              height: 15,
            ),
            Text('Continue as a guest',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.blue)
            )
            
          ],
        ),
        ),
    );
    
  }
}