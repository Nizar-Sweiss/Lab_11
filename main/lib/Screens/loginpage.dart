import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lab011/Screens/showdailog.dart';
import '../homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController valuofusername = new TextEditingController();
  TextEditingController valueofpassword = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 61, 105, 147),
      body:
          //this main container inside it everything
          Container(
              margin: EdgeInsets.only(left: 30, right: 30, top: 20),
              child: ListView(
                children: [
                  Container(
                    child: CircleAvatar(
                      child: ClipRRect(
                        child: Image.asset("images/LoginLogo.png"),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      radius: 90,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border:
                            Border(bottom: BorderSide(color: Colors.white))),
                    child: TextFormField(
                      controller: valuofusername,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.white54,
                        ),
                        hintStyle: TextStyle(color: Colors.white54),
                        hintText: 'email',
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border:
                            Border(bottom: BorderSide(color: Colors.white))),
                    child: TextFormField(
                      obscureText: true,
                      controller: valueofpassword,
                      decoration: const InputDecoration(
                        // border: UnderlineInputBorder(),
                        hintStyle: TextStyle(color: Colors.white54),
                        hintText: 'Password',
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.white54,
                        ),
                        suffix: Icon(Icons.remove_red_eye),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 30,
                  ),

                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white70),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    height: 50,
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 61, 105, 147),
                          ),
                        ),
                        onPressed: () {
                          if (valueofpassword.text == "bash" &&
                              valuofusername.text == "bash") {
                            Navigator.popAndPushNamed(context, "Home");
                          } else {
                            ShowDailogWhenWrongPassorUser(context);
                          }
                        },
                        child: Icon(
                          Icons.check,
                          size: 50,
                          color: Colors.white54,
                        )),
                  ),
                  //end button Login
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 5, bottom: 5),
                    width: 170,
                    child: Text(
                        textAlign: TextAlign.center,
                        "Forgot Password?",
                        style: GoogleFonts.acme(
                            color: Colors.white54, fontSize: 20)),
                  ),

                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    height: 40,
                    margin: EdgeInsets.only(top: 10),
                    child: ElevatedButton.icon(
                      label: Text("Log in with Facebook",
                          style: GoogleFonts.acme(
                              color: Colors.white54, fontSize: 20)),
                      icon: Icon(Icons.facebook),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Colors.blue.shade900,
                        ),
                      ),
                      onPressed: () {
                        // Navigator.of(context)
                        //     .push(MaterialPageRoute(builder: (context) {
                        //   return Home();
                        // }));
                      },
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(100))),
                    height: 40,
                    margin: EdgeInsets.only(top: 10),
                    child: ElevatedButton.icon(
                      label: Text("Log in with Gmail",
                          style: GoogleFonts.acme(
                              color: Colors.black45, fontSize: 20)),
                      icon: Icon(
                        Icons.mail,
                        color: Colors.black54,
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Colors.white,
                        ),
                      ),
                      onPressed: () {
                        // Navigator.of(context)
                        //     .push(MaterialPageRoute(builder: (context) {
                        //   return Home();
                        // }));
                      },
                    ),
                  )
                ],
              )),
    );
  }
}
