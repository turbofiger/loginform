import 'package:flutter/material.dart';
import 'package:loginformapp/models/pass.dart';
import 'package:provider/provider.dart';

class MyApp_login_page_provider extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider<MyPass>(
      create: (context) => MyPass(),
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.blue,
        ),
        title: 'Login',
        home: HomePage(),

      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Row(children: [
            Icon(Icons.account_circle),
            Text('Login Page on Provider')
          ],),),
      ),
      body: Center(
        child: WidgetFormLogin(),
      ),
    );
  }
}

class WidgetFormLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TextField(
            obscureText: true,
            onChanged: (newPass1) => context.read<MyPass>().changePass1(newPass1),
          ),
          TextField(
            obscureText: true,
            onChanged: (newPass2) => context.read<MyPass>().changePass2(newPass2),
          ),
          //check for equals passwords in TextFields and appearing button LOGIN
          context.watch<MyPass>().getCheck==true ? MaterialButton(
              color: Colors.green,
              child: Text('LOGIN'),
              onPressed: (){
              })
              : Container(),
        ],
      ),
    );
  }
}
