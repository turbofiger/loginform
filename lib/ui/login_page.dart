import 'package:flutter/material.dart';


class MyApp_login_page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.blue,
        ),
        title: 'Login',
        home: HomePage(),
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
            Text('Login Page on Listeners')
          ],),),
      ),
      body: Center(
        child: WidgetFormLogin(),
      ),
    );
  }
}

class WidgetFormLogin extends StatefulWidget {

  @override
  State<WidgetFormLogin> createState() => _WidgetFormLoginState();
}

class _WidgetFormLoginState extends State<WidgetFormLogin> {

  TextEditingController pass1 = TextEditingController();

  TextEditingController pass2 = TextEditingController();

  bool btnCheck=false;

  @override
  void initState() {
    super.initState();

    pass1.addListener(() {
      setState(() {
        if(pass1.text.length>0) pass1.text == pass2.text ? btnCheck=true : btnCheck=false;
      });
    });

    pass2.addListener(() {
      setState(() {
        if(pass2.text.length>0) pass1.text == pass2.text ? btnCheck=true : btnCheck=false;
      });
    });

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TextField(
            obscureText: true,
            controller: pass1,
          ),
          TextField(
            obscureText: true,
            controller: pass2,
          ),
          btnCheck==true ? MaterialButton(
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

