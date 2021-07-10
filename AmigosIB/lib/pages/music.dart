
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swipable/flutter_swipable.dart';
import 'package:url_launcher/url_launcher.dart';

class MMSP extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Colors.black87,
                  Colors.teal,
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                stops: [
                  0.5,
                  0.5,
                ]
            )
        ),
        child: Stack(
          children: [
            Scaffold(
                extendBodyBehindAppBar: true,
                appBar: AppBar(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  title: Text('AMIGOS'),
                  centerTitle: true,
                ),
                body: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Colors.black87,
                              Colors.teal,
                            ],
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            stops: [
                              0.5,
                              0.5,
                            ]
                        )
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black12.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(7.0, 8.0)
                                  ),
                                ]
                            ),
                            child: Image(
                              image: AssetImage('assets/mmsp_2.jpg'),
                              width: 300,
                            ),
                          ),

                          Text(
                            '"No spoilers plz.".',
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                          FloatingActionButton(
                            backgroundColor: Colors.black87,
                            child: Text('Chat!'),
                            onPressed: () {
                              openurl();
                            },
                          )
                        ],
                      ),

                    )
                )
            ),
            Swipable(
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: Colors.red,
                  child: Stack(
                      children:[
                        Align(
                          alignment: Alignment.center,
                          child:  Text("This is a safe space",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Text("swipe to continue",
                            style: TextStyle(
                              fontSize: 10.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ]


                  ),
                )
            ),

            Swipable(
              child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: Colors.blue,
                  child:Stack(
                      children:[
                        Align(
                          alignment: Alignment.center,
                          child:  Text("Respect every individual's point of view.",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Text("swipe to continue",
                            style: TextStyle(
                              fontSize: 10.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ]
                  )
              ),
            ),
            Swipable(
                child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    color: Colors.green,
                    child: Stack(
                        children:[
                          Align(
                            alignment: Alignment.center,
                            child:  Text("Refrain from using foul language.",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),

                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Text("swipe to continue",
                              style: TextStyle(
                                fontSize: 10.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ]
                    )
                )
            ),
          ],
        ),
      ),
    );
  }
}

openurl()
{
  String e = "https://www.chatzy.com/21575494540738";
  launch (e);
}