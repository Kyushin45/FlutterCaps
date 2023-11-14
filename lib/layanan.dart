import 'package:caps/artikelrujukan.dart';
import 'package:caps/home_page.dart';
import 'package:caps/test.dart';
import 'package:flutter/material.dart';

class Layanan extends StatelessWidget {
  const Layanan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Image.asset("assets/image/logo.png"),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body:
          Center(
              child: Container(
                child: GridView.count(crossAxisCount: 2,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(5),
                      alignment: Alignment.center,
                      child:
                      Image.asset("assets/image/tanganhp.png"),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 50),
                            alignment: Alignment.center,
                            child:
                            Text("menunjukkan kecakapan chat bot dalam berkomunikasi", textAlign: TextAlign.center,style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(17, 0, 158, 1)
                            ),),
                          ),
                          Container(
                            width: 180,
                            child: TextButton(

                              style: TextButton.styleFrom(
                                  backgroundColor: Colors.lightBlue[900]),
                              onPressed: () {
                                // Navigator.of(context).push(MaterialPageRoute(builder: (context) => Beranda()));
                              },
                              child: Text(
                                "Open Chatbot",
                                style: TextStyle(
                                    color: Colors.white
                                ),
                              ),
                            ),
                          )
                        ],
                      ),



                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 45),
                            alignment: Alignment.center,
                            child:
                            Text("Analisis Ekspresi Wajah untuk Mendeteksi Emosi", textAlign: TextAlign.center,style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(17, 0, 158, 1)
                            ),),
                          ),
                          Container(
                            width: 180,
                            child: TextButton(

                              style: TextButton.styleFrom(
                                  backgroundColor: Colors.lightBlue[900]),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyPage()));
                              },
                              child: Text(
                                "Open Analisis Ekspresi",
                                style: TextStyle(
                                    color: Colors.white
                                ),
                              ),
                            ),
                          )
                        ],
                      ),

                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      alignment: Alignment.center,
                      child:
                      Image.asset("assets/image/robot.png"),
                    ),
                    Container(
                        margin: EdgeInsets.all(5),
                        alignment: Alignment.center,
                        child:
                        Image.asset("assets/image/human.png")
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 50),
                            alignment: Alignment.center,
                            child:
                            Text("Rekomendasi Artikel dan Latihan Relaksasi", textAlign: TextAlign.center,style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(17, 0, 158, 1)
                            ),),
                          ),
                          Container(
                            width: 180,
                            child: TextButton(

                              style: TextButton.styleFrom(
                                  backgroundColor: Colors.lightBlue[900]),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => artikelRujukan()));
                              },
                              child: Text(
                                "Open Artikel",
                                style: TextStyle(
                                  color: Colors.white,

                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      // margin: EdgeInsets.all(5),
                      // alignment: Alignment.center,
                      // child:
                      // Text("Rekomendasi Artikel dan Latihan Relaksasi", textAlign: TextAlign.center,style: TextStyle(
                      //     fontSize: 15,
                      //     fontWeight: FontWeight.bold,
                      //     color: Color.fromRGBO(17, 0, 158, 1)
                      // ),),
                    )
                  ],),

              )
          )

    );
  }
}
