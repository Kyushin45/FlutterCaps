import 'package:caps/artikelrujukan.dart';
import 'package:caps/layanan.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(

      MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: Home()
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:
      Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/image/test.png"),
                fit: BoxFit.cover),

          ),
          child:
            Center(
              child: Column(
                children: <Widget>[
                  Container(
                    child: Image.asset("assets/image/logo.png"),
                    margin: EdgeInsets.only(top: 150),
                  ),
                  Container(
                    child:
                      Text("Jangan Biarkan Diri Anda Sendirian. Bersama, Kita Peduli",style: TextStyle(fontSize: 14),),
                      margin: EdgeInsets.only(top: 5),



                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    width: 250,
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(10.0),
                          hintText: 'Username',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0)
                            ),
                            filled: true,
                            fillColor: Colors.grey[200]

                        ),
                      )
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 5),
                      width: 250,
                      child: TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10.0),
                            hintText: 'Email',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),

                            ),

                            filled: true,
                            fillColor: Colors.grey[350]

                        ),
                      )
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 5),
                      width: 250,
                      child: TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10.0),
                            hintText: 'Password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0)
                            ),
                            filled: true,
                            fillColor: Colors.grey[300],



                        ),

                      )

                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    width: 250,

                    child: Center(
                      child: Row(
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Container(
                                  child: const Align(
                                    alignment: Alignment.topLeft,
                                    child: Text("Don't have an account?"),

                                  )
                                ),
                                Container(

                                  child: const Align(
                                    alignment: Alignment.topLeft,
                                    child: TextButton(
                                        onPressed: null, 
                                        child: Text("Sign up")),
                                  )
                                )
                              ],
                            ),


                          ),
                          Container(

                            margin: EdgeInsets.only(left: 5),
                            width: 90,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor: Colors.lightBlue[900]),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => artikelRujukan()));
                              },
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  color: Colors.white
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child:
                    Row(children: <Widget>[
                      Expanded(
                        child: new Container(
                            margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                            child: Divider(
                              color: Colors.lightBlue[900],
                              height: 50,
                            )),
                      ),
                      Text("OR", style:
                        TextStyle(
                          color: Colors.lightBlue[900],
                          fontSize: 20.0
                        ),),
                      Expanded(
                        child: new Container(
                            margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                            child: Divider(
                              color: Colors.lightBlue[900],
                              height: 50,
                            )),
                      ),
                    ]),
                  )

                ],

              ),

              // Foreground widget here
            )
      )
    );
  }
}

class Beranda extends StatelessWidget {
  const Beranda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        title: Image.asset("assets/image/logo-app.png"),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,

      ),
      body:
        Center(
          child: Column(
            children: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Text("Call-to-Action", style:
                    TextStyle(
                      fontSize: 30.0,
                      fontFamily: 'LeagueSpartan',
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(17, 0, 158, 1),

                    ),),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text("\"Jaga Kesehatan Mentalmu Mulai Sekarang\"",
                      style:
                        TextStyle(
                          color: Color.fromRGBO(17, 0, 158, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 15

                        ),),
                    ),
                    Container(
                      width: 350,
                      padding: EdgeInsets.only(bottom: 9),
                      child: 
                      Image.asset("assets/image/calltoaction.png"),
                    )

                  ],
                ),
              ),
              // Container(
              //   child: Column(
              //     children: [
              //       Container(
              //         child: Text("Call-to-Action",
              //         ),
              //       )
              //     ],
              //   ),
              // )
              
              Container(
                padding: EdgeInsets.only(top: 20),
                width: double.infinity,
                decoration: new BoxDecoration(color: Color.fromRGBO(17, 0, 158, 1)),
                child: Column(
                children: [
                  Container(

                    child: Text("Layanan Unggulan", style:
                      TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 25
                      ),),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    child: 
                    Image.asset("assets/image/gambarunggulan.png"),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Text("Teknik Relaksasi", style:
                    TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 25
                    ),),
                    )
                  ],
              ),
              )],
          ),
          // child: Column(

            // children: [
            //   Container(
            //     padding: EdgeInsets.only(top: 60),
            //     child: Text("Call-to-Action", style:
            //       TextStyle(
            //         fontSize: 30.0,
            //         fontFamily: 'LeagueSpartan',
            //         fontWeight: FontWeight.bold,
            //         color: Colors.blue.shade900
            //       ),),
            //   ),
            //   Container(
            //     child: Text("Jaga Kesehatan Mentalmu Mulai Sekarang", style: TextStyle(
            //       fontSize: 16.0,
            //       fontFamily: 'LeagueSpartan',
            //       fontWeight: FontWeight.bold,
            //       color: Colors.blue.shade900
            //     ),),
            //   ),
            //   Container(
            //     width: 280,
            //     child:
            //     Image.asset("assets/image/calltoaction.png"),
            //   ),
            //   Container(
            //     width: double.infinity,
            //     child: Expanded(
            //       child: Image.asset("assets/image/rileks.png",fit: BoxFit.fitHeight,),
            //     )
            //
            //   )
            // ],
          ),
        );

    // );
  }
}






