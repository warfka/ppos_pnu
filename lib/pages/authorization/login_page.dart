import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../main_page.dart';

class LoginApp extends StatelessWidget{
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white,
                    Colors.blueAccent,
                    //Colors.red,
                  ]
              )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 50,),
              /*SizedBox(
                height:200,
                width: 300,
                child: LottieBuilder.asset("assets/lottie/login2.json"),
              ),*/
              const SizedBox(height: 10,),
              Container(
                width: 325,
                height: 470,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 30,),
                    const Text("Привет",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight:FontWeight.bold
                      ),),
                    const SizedBox(height: 10,),
                    const Text("Войдите в свою учетную запись",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),),
                    const SizedBox(height: 30,),
                    Container(
                      width: 260,
                      height: 60,
                      child: const TextField(
                        decoration: InputDecoration(
                            suffix: Icon(FontAwesomeIcons.envelope,color: Colors.red,),
                            labelText: "Эл. почта",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                            )
                        ),
                      ),
                    ),
                    const SizedBox(height: 12,),
                    Container(
                      width: 260,
                      height: 60,
                      child: const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            suffix: Icon(FontAwesomeIcons.eyeSlash,color: Colors.red,),
                            labelText: "Пароль",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                            )
                        ),
                      ),
                    ),
                    Padding(
                      padding:const EdgeInsets.fromLTRB(20, 0, 30, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: (){},
                            child:const Text("Регистрация",
                              style: TextStyle(
                                  color: Colors.blue
                              ),
                            ),
                          ),
                          //const SizedBox(width: 50,),
                          TextButton(
                            onPressed: (){},
                            child:const Text("Забыл пароль",
                              style: TextStyle(
                                  color: Colors.deepOrange
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          height: 50,
                          width: 260,
                          color: Colors.blue,
                          child: MaterialButton(
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const MainPage()),
                              );
                            },
                            color: Colors.blue,
                            child: Text(
                              'Войти',
                              style: const TextStyle(color: Colors.white,
                              fontSize: 25),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 17 ,),

                    /*const Text("Or Login using Social Media Account",
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),),
                    const SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                            onPressed: click,
                            icon: const Icon(FontAwesomeIcons.facebook,color: Colors.blue)
                        ),
                        IconButton(
                            onPressed: click,
                            icon: const Icon(FontAwesomeIcons.google,color: Colors.redAccent,)
                        ),
                        IconButton(
                            onPressed: click,
                            icon: const Icon(FontAwesomeIcons.twitter,color: Colors.orangeAccent,)
                        ),
                        IconButton(
                            onPressed: click,
                            icon: const Icon(FontAwesomeIcons.linkedinIn,color: Colors.green,)
                        )
                      ],
                    )*/
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void click( ){

  }
}
