import 'package:flutter/material.dart';

class NextPage extends StatelessWidget{
  String name, email, phone; //defining string variables

  //constructor
  NextPage(this.name, this.email, this.phone);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // to center align all the widgets
          children: [
            SizedBox(
                height: 50,
                child: Text(
                  'Name: $name',
                  style: TextStyle(fontSize: 20),
                )
            ),
            //Text widget with margin using sizedbox
            SizedBox(height: 50, child: Text('Email: $email', style: TextStyle(fontSize:  20),)),
            SizedBox(height: 50, child: Text('Phone: $phone', style: TextStyle(fontSize: 20),))
          ],
        ),
      )
    );
  }
}