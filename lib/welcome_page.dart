import 'package:flutter/material.dart';
import 'package:user_auth/auth_controller.dart';
class WelcomePage extends StatelessWidget {
  String email;
  WelcomePage({Key? key, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: w*2,
              height: h*0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(
                  image: AssetImage(
                    "assets/Image_Header.png"
                    ),
                    fit: BoxFit.cover
                    )
              ),
              child: Column(
                children: [
                  SizedBox(height: 130,),
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage(
                      "assets/Profile_1.png"
                    ),
                  )
                ],

              ),
            ),
            SizedBox(height:15),
            Text(email,style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),),
            Container(
              width: w,
              margin: const EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Congratulations",
                    style: TextStyle(
                      fontSize: 49,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "\nYour email ID has been successfully authenticated, check Firebase console to see your email registered",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,     
                    ),
                  ),
            SizedBox(height: 15,),
            GestureDetector(
              onTap: (){
                AuthController.instance.logout();
              },
              child: Container(
                margin: EdgeInsets.only(left:80),
                width: w*0.5,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/Button.png"
                      ),
                      fit: BoxFit.fitWidth
                      )
                ),
                child: Center(
                  child: Text(
                    "Go Back",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),),
                ),
              ),
            ), ],
              ),
            )
          ],
        ),
      ),
    );
    
  }
}