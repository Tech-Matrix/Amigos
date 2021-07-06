import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'football.dart';
import 'gaming.dart';
import 'cricket.dart';

void main() {
  runApp(MaterialApp(
    home: Categories(),
  ));}

class Categories extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('AMIGOS'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                 child: Stack(
                   children: [
                     Ink.image(
                       image: NetworkImage('https://images.unsplash.com/photo-1589487391730-58f20eb2c308?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8Zm9vdGJhbGx8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Football()),);
                          },
                        ),
                       height: 170,
                       fit: BoxFit.cover,
                     )
                   ],
                 ),

              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    Ink.image(
                      image: NetworkImage('https://images.unsplash.com/photo-1552820728-8b83bb6b773f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Z2FtaW5nfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Gaming()),);
                        },
                      ),
                      height: 170,
                      fit: BoxFit.cover,
                    )
                  ],
                ),

              ),
              Card(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Stack(
                    children: [
                      Ink.image(
                        image: NetworkImage('https://images.unsplash.com/photo-1531415074968-036ba1b575da?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y3JpY2tldHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Cricket()),);
                          },
                        ),
                        height: 170,
                        fit: BoxFit.cover,
                      )
                    ],
                  ),
              )


              ),
            ],
          ),

          )
        );
  }
}