import 'package:flutter/material.dart';
import 'package:mobex_mvc/components/avatar.widget.dart';

class UserCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 40,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: new ExactAssetImage('assets/images/notification.png'),
          fit: BoxFit.cover,
          alignment: Alignment.bottomCenter,
        ),
      ),
      width: double.infinity,
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          ImgAvatar(
            width: 80,
            path: 'https://placehold.it/80',
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Rodrigo Brunet',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Container(
            height: 20,
            child: FlatButton(
              child: Text(
                'Sair',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {},
            ),
          ),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
