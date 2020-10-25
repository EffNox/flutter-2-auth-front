import 'package:auth/services/google_signin.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Auth',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Auth'),
          actions: [
            IconButton(
              icon: Icon(Icons.logout),
              onPressed: SGoogleSignIn.signOut,
            )
          ],
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                splashColor: Colors.transparent,
                minWidth: double.infinity,
                height: 40,
                color: Colors.redAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(FontAwesomeIcons.google, size: 20),
                    Text('  Iniciar con Google'),
                  ],
                ),
                onPressed: SGoogleSignIn.sigIngWithGoogle,
              )
            ],
          ),
        ),
      ),
      // initialRoute: 'home',
      // routes: {
      // 'home': (_) => HomePg(),
      // },
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.grey.withOpacity(.28),
      ),
    );
  }
}
