import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class sentimen extends StatefulWidget {
  const sentimen({super.key});

  @override
  State<sentimen> createState() => _sentimenState();
}

class _sentimenState extends State<sentimen> {
  TextEditingController _textArea = TextEditingController();

  void _showAlertDialog(BuildContext context, String title, String content) {
    // Membuat AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            // Tutup alert
            Navigator.of(context).pop();
          },
          child: Text('OK'),
        ),
      ],
    );

    // Panggil showDialog untuk menampilkan AlertDialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }


  Future<void> sendDataToServer(String text) async {
    final url = 'https://de83-36-68-54-54.ngrok-free.app/analisis_sentimen'; // Replace with your Flask server endpoint

    try {
      final response = await http.post(
        Uri.parse(url),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'text': text}),
      );

      if (response.statusCode == 200) {
        // Handle the successful response from the server
        Map<String, dynamic> responseData = jsonDecode(response.body);
        String prediction = responseData['prediction'];
        // print('Prediction from server: $prediction');
        _showAlertDialog(context, 'Sentimen Analisis','$prediction');
      } else {
        // Handle errors
        print('Failed to send data. Status code: ${response.statusCode}');
      }
    } catch (e) {
      // Handle exceptions
      print('Error sending data: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sentimen Analisis", style: TextStyle(
          color: Colors.white
          ),
        ),
        leading: BackButton(
          color: Colors.white, // Set the color to white
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(

              color: Color.fromRGBO(17, 0, 158, 1)
          ),
        ),
      ),
      body:
      SingleChildScrollView(
        child: Center(
          child: Container(
            child: Column(
              children: <Widget>[
                Card(
                  color: Colors.white,
                  child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    controller: _textArea,
                    maxLines: 10, //or null
                    decoration: InputDecoration.collapsed(hintText: "Enter your text here"),
                    ),
                  )
                ),
              Container(
                width: 350,
                height: 50,
                child: TextButton(
        
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.lightBlue[900]),
                  onPressed: () {
                    String text = _textArea.text;
                    sendDataToServer(text);
                  },
                  child: Text(
                    "Open Analisis Sentimen",
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
      ),
    );
  }
}
