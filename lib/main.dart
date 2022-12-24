import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const magicball());
}
class magicball extends StatefulWidget {
  const magicball({Key? key}) : super(key: key);

  @override
  State<magicball> createState() => _magicballState();
}

class _magicballState extends State<magicball> {
  @override

  int a=1;

  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(backgroundColor:Colors.white,

        body:Center(
          child: Column(mainAxisAlignment: MainAxisAlignment. center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Expanded(
                  child: InkWell(onTap: ()
                  {
                    setState(() {
                      a=Random().nextInt(4)+1;
                    });
                  },
                    child: Container(
                      height:300,
                      width: 300,
                      decoration: BoxDecoration(
                        image:  DecorationImage(
                          image: AssetImage("images/ball$a.jpeg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


