import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:user_auth/auth_controller.dart';
class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
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
            SizedBox(height: 15,),
            Container(
              width: w,
              margin: const EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome",
                    style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Sign Up here",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      
                    ),
                  ),
                  SizedBox(height:15,),
                  SizedBox(width: 380,
                    child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        hintText: "Enter your email here",
                        prefixIcon: Icon(Icons.email_outlined),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 1
                          ),
                          borderRadius: BorderRadius.circular(15)
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 25,),
                  SizedBox(width: 380,
                    child: TextField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter your password here",
                        prefixIcon: Icon(Icons.password_sharp),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 1
                          ),
                          borderRadius: BorderRadius.circular(15)
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(""
                  ,style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey
                  ),),
                  SizedBox(height: 15,),
            GestureDetector(
              onTap: (){
                AuthController.instance.register(emailController.text.trim(), 
                passwordController.text.trim());
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
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),),
                ),
              ),
            ),
            SizedBox(height: 45,),
            RichText(text: TextSpan(
              text:"\t\t\t\tAlready have an account ? ",
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
              children: [TextSpan(
              text:"Click here",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold
              ),
              recognizer: TapGestureRecognizer()..onTap=()=>Get.back()
              )
              ,]
            )),
      
                ],
              ),
            )
          ],
        ),
      ),
    );
    
    
  }
}