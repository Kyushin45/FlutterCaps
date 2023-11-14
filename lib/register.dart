import 'package:caps/main.dart';
import 'package:flutter/material.dart';

class register extends StatelessWidget {
  const register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      resizeToAvoidBottomInset: false,
      body:

      Container(

        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/image/test.png"),
            fit: BoxFit.cover
          )
        ),
        child: 
        Column(
          children: [
            Container(
              child: Image.asset("assets/image/logo.png"),
              margin: EdgeInsets.only(top: 130),
            ),
            Container(
              child: Text("Register", style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Color.fromRGBO(17, 0, 158, 1),
                fontFamily: 'LeagueSpartan'

              ),),
            ),
            Container(
                margin: EdgeInsets.only(top: 5),
                width: 320,
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10.0),
                      hintText: 'Full Name',
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
                width: 320,
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
                width: 320,
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10.0),
                      hintText: 'Email',
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
                width: 320,
                child: TextField(
                  obscureText: true,
                  obscuringCharacter: "*",
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
                margin: EdgeInsets.only(top: 5),
                width: 320,
                child: TextField(
                  obscureText: true,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.0),
                    hintText: 'Re-type Password',
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
              width: 300,
              height: 50,
              child: TextButton(style: TextButton.styleFrom(
                backgroundColor: Color.fromRGBO(17, 0, 158, 1),

              ),onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home()));
              },
                child: Text("Submit",style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),),

              ),
            )
          ],
        ),
      ),
    );
  }
}
