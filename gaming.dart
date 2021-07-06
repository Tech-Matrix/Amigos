import 'package:flutter/material.dart';

class Football extends StatelessWidget {
  const Football({Key? key}) : super(key: key);

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
              Image(
                image: NetworkImage('https://images.unsplash.com/photo-1529900748604-07564a03e7a6?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fGZvb3RiYWxsfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                height: 300,
                width: 300,
              ),
              Text(
                'Talk about the beautiful game.',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              FloatingActionButton(
                child: Text('Chat!'),
                onPressed: () {},
              )
            ],
          ),

        )
    );
  }
}