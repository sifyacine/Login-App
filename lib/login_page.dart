import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:loginapp/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    AutovalidateMode autovalidateMode = AutovalidateMode.always;
    final _formKey = GlobalKey<FormState>();
    TextEditingController emailControler = TextEditingController();
    TextEditingController passwordControler = TextEditingController();
    bool ispass = true;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 48.0,
                    ),
                  ),
                  Text(
                    "Sign in to learn with yacine!!",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.all(26.0),
              decoration: BoxDecoration(
                color: kGreenColor,
                borderRadius: BorderRadius.circular(26.0),

              ),
              child: Form(
                autovalidateMode: autovalidateMode,
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value){
                        if(value!.isEmpty){
                          return "email can't be empty ";
                        }else {
                          return null;
                        }
                      },
                      controller: emailControler,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: kBlackColor,
                          ),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                        ),
                        hintText: "enter your email",
                        label: Text("email"),
                        labelStyle: TextStyle(
                          color: kBlackColor,
                        ),
                        suffixIconColor: kBlackColor,
                        suffixIcon: Icon(Icons.email),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value!.length < 6){
                          return "password must be correct";
                        }
                        else{
                          return null;
                        }
                      },
                      obscureText: ispass,
                      controller: passwordControler,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: kBlackColor,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)
                        ),
                        hintText: "enter your password",
                        label: Text("password"),
                        labelStyle: TextStyle(
                          color: kBlackColor,
                        ),
                        suffixIconColor: kBlackColor,
                        suffixIcon: GestureDetector(
                          onTap: (){
                            setState(() {
                              ispass = !ispass;
                            });
                          },
                            child: Icon(
                                Icons.remove_red_eye,
                            ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: kBlackColor,
                              padding: EdgeInsets.all(20),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              )
                            ),
                            onPressed: (){
                              _formKey.currentState!.validate();
                            },
                            child: Text(
                              "Login",

                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: (){},
                    child: Text(
                      'forget password',
                      style: TextStyle(

                      ),
                    ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    "OR login with",
                    style: TextStyle(

                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    border: Border.all(width: 2),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: IconButton(
                      onPressed: (){},
                      icon:Icon(
                        LineIcons.facebook,
                      ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    border: Border.all(width: 2),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: IconButton(
                    onPressed: (){},
                    icon:Icon(
                      LineIcons.googlePlus,
                    ),
                  ),
                ),Container(
                  padding: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    border: Border.all(width: 2),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: IconButton(
                    onPressed: (){},
                    icon:Icon(
                      LineIcons.twitter,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                "Don't have account? Creat new account",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
