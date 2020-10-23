import 'package:flutter/material.dart';
import 'package:mobex_mvc/components/button.widget.dart';
import 'package:mobex_mvc/widgets/user-card.widget.dart';

class CreateTodoView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            UserCard(),
            Padding(
              padding: EdgeInsets.all(40.0),
              child: Form(
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: 'terefa',
                        labelStyle: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                      style: TextStyle(
                        fontSize: 20,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 20,
                      ),
                      child: Text(
                        '09/03/2020',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    FlatButton(
                      child: Text('Alterar Data'),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 40.0,
                right: 40.0,
                top: 20,
                bottom: 10,
              ),
              child: BtnButton(
                text: 'Salvar',
                width: double.infinity,
                callback: () {},
              ),
            ),
            FlatButton(
              child: Text('Cancelar'),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
