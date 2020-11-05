import 'package:flutter/material.dart';
import 'package:mobex_mvc/components/button.widget.dart';
import 'package:mobex_mvc/controllers/login.controller.dart';
import 'package:mobex_mvc/views/home.view.dart';
import 'package:mobex_mvc/widgets/busy.widget.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final controller = new LoginController();
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  var busy = false;

  handleSingIn() {
    setState(() {
      busy = true;
    });
    controller.login().then((data) {
      onSucess();
    }).catchError((err) {
      onError();
    }).whenComplete(() {
      onComplete();
    });
  }

  onSucess() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HomeView(),
      ),
    );
  }

  onError() {
    var snackbar = new SnackBar(content: new Text('Falha no login'));
    scaffoldKey.currentState.showSnackBar(snackbar);
  }

  onComplete() {
    setState(() {
      busy = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(30),
          child: TDBusy(
            busy: busy,
            child: Card(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    width: double.infinity,
                  ),
                  Image.asset(
                    'assets/images/notification.png',
                    width: 250,
                  ),
                  Text(
                    'Olá forasteiro',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  BtnButton(
                    text: 'Login com google',
                    image: 'assets/images/google.png',
                    callback: () {
                      handleSingIn();
                    },
                  ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
