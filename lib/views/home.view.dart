import 'package:flutter/material.dart';
import 'package:mobex_mvc/widgets/navbar.widget.dart';
import 'package:mobex_mvc/widgets/todo-list.widget.dart';
import 'package:mobex_mvc/widgets/user-card.widget.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          UserCard(),
          NavBar(),
          Expanded(
            child: Container(
              child: TodoList(),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
