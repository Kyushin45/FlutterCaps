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
      body: Container(
        child: GridView.count(crossAxisCount: 2,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(5),
              alignment: Alignment.center,
              child: 
              Image.asset("assets/image/tanganhp.png"),
            ),
            Container(
              margin: EdgeInsets.all(5),
              alignment: Alignment.center,
              child:
              Text("menunjukkan kecakapan chat bot dalam berkomunikasi", textAlign: TextAlign.center,style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(17, 0, 158, 1)
              ),),

            ),
            Container(
              margin: EdgeInsets.all(5),
              alignment: Alignment.center,
              child:
              Text("Analisi Ekspresi Wajah untuk Mendeteksi Emosi", textAlign: TextAlign.center,style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(17, 0, 158, 1)
              ),),
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
              margin: EdgeInsets.all(5),
              alignment: Alignment.center,
              child:
              Text("Rekomendasi Artikel dan Latihan Relaksasi", textAlign: TextAlign.center,style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(17, 0, 158, 1)
              ),),
            )
        ],),

      )
    );
  }
}
