import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'books.dart';
import 'cricket.dart';
import 'football.dart';
import 'music.dart';
import 'gaming.dart';


class Categories extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('AMIGOS',style: TextStyle(color: Colors.white),),
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
          child: SingleChildScrollView(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Ink.image(
                            image: AssetImage('assets/football_1.jpg'),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => Football()),);
                              },
                            ),
                            height: 150,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            'Football',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 24.0,
                            ),
                          )
                        ],
                      ),

                    ),
                    Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Ink.image(
                            image: AssetImage('assets/gaming_1.jpg'),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => Gaming()),);
                              },
                            ),
                            height: 150,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            'Gaming',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 24.0,
                            ),
                          )
                        ],
                      ),

                    ),
                    Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Ink.image(
                            image: AssetImage('assets/cricket_2.jpg'),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => Cricket()),);
                              },
                            ),
                            height: 150,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            'Cricket',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 24.0,
                            ),
                          )
                        ],
                      ),
                    ),
                    Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Ink.image(
                            image: AssetImage('assets/mmsp_1.jpg'),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => MMSP()),);
                              },
                            ),
                            height: 150,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            'Music|Movies|Series|Podcasts',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 24.0,
                            ),
                          )
                        ],
                      ),
                    ),
                    Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Ink.image(
                            image: AssetImage('assets/bnp_1.jpg'),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => BNP()),);
                              },
                            ),
                            height: 150,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            'Books|Novels|Poems',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 24.0,
                            ),
                          )
                        ],
                      ),

                    ),

                  ],
                ),

              )
          ),
        )
        );
  }
}
