import 'package:flutter/material.dart';
import 'package:to_do_list_app/src/constants/colors.dart';
import 'package:to_do_list_app/src/model/todo.dart';
import 'package:to_do_list_app/src/widgets/to_do_item.dart';

class Home extends StatelessWidget{
  Home ({super.key});
  final todosList = ToDo.todoList();


  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: _buildAppBar(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          children: [
            searchBox(),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 50, bottom: 20),
                    child: Text('All ToDos', style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500
                    ),),
                  ),
                  for (ToDo todo in todosList )
                  ToDoItem(todo: todo),
                  
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget searchBox() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20)
      ),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Icon(
            Icons.search,
            color: tdBlack,
            size: 20,
          ),
          prefixIconConstraints: BoxConstraints(
            maxHeight: 20,
            minWidth: 25,
          ),
          border: InputBorder.none,
          hintText: 'Search ToDo here',
          hintStyle: TextStyle(
            color: tdGrey,
          )
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0,
      scrolledUnderElevation: 0,
      backgroundColor: tdBGColor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.menu,
            color: tdBlack,
            size: 30,
            ),
          Text('ToDo App', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
          Container(
            width: 40,
            height: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('assets/images/avatar.jpeg'),
            ),
          )
        ],
      ),
    );
  }
}