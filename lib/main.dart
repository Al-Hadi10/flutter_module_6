import 'package:flutter/material.dart';

void main(){
  runApp(
    MyApp()
  );
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
      title: 'Ostad app',

    );
  }
}
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),

        actions: [
          Icon(Icons.call),
          Icon(Icons.message),
          PopupMenuButton(itemBuilder: ( BuildContext context){
            return[

            ];
          })
        ],
      ) ,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
            primary: Colors.pink,
                onPrimary: Colors.white,
                textStyle: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
        ),

                onLongPress: (){
                  print('Email deleted!');
                },
                onPressed: (){
              print('Email has been sent');
            },
                child: Text('Send Email'),
            ),

            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.purple,
                textStyle: TextStyle(
                  fontSize: 24,

                ),
              ),
              onLongPress: (){
                print('Long Press');
              },
              onPressed: (){
              print('Resend email');
            },
                child:
            Text('Recend'),
            ),
            IconButton(onPressed: (){

            },
                icon: Icon(Icons.add)),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.white,
                textStyle: TextStyle(
                  fontSize: 24,
                  color: Colors.black54,
                )
              ),
              onLongPress: (){
                print('Long press on outlined button');
              },
              onPressed: (){
                print('Add ');
              },
                child:
            Text('Outlind Buttom'),
            ),
            TextField(
              style: TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                fillColor: Colors.blue,
                filled: true,
                hintText: 'Enter Your Email Address',
                hintStyle: TextStyle(
                  color: Colors.white54,
                ),
                suffixIcon: Icon(Icons.email_outlined, color: Colors.white54,),
                label: Text('Email Address'),
                labelStyle: TextStyle(
                  color: Colors.white,
                ),

              ),
            ),
            TextField(
              obscureText: true,
              style: TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                fillColor: Colors.blue,
                filled: true,
                hintText: 'Enter Password',
                hintStyle: TextStyle(
                  color: Colors.white54,
                ),
                suffixIcon: Icon(Icons.password_outlined, color: Colors.white54,),
                label: Text('Password'),
                labelStyle: TextStyle(
                  color: Colors.white,
                ),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
