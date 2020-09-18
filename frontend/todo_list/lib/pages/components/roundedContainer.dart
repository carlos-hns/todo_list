import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:todo_list/models/todo_model.dart';
import 'package:todo_list/pages/components/list_component.dart';
import 'package:todo_list/stores/todo_store.dart';

import 'costom_textfield.dart';

class ItemContainer extends StatefulWidget {
  String searchHintText;
  BorderRadius border;
  double width;
  double height;
  ItemContainer({this.border, this.width, this.height, this.searchHintText});

  @override
  _ItemContainerState createState() => _ItemContainerState();
}

class _ItemContainerState extends State<ItemContainer> {
  @override
  void initState() {
    super.initState();
    choiceList();
  }

  final todoStore = TodoStore();
  var _choicedList;

  void choiceList() {
    switch (widget.searchHintText) {
      case "Dia":
        _choicedList = todoStore.todosDiarios;
        print(_choicedList);
        break;
      case "Semana":
        _choicedList = todoStore.todosSemanais;
        break;
      case "Mês":
        _choicedList = todoStore.todosSemanais;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Container(
        width: widget.width * 0.3,
        height: widget.height * 0.7,
        decoration:
            BoxDecoration(color: Colors.grey[850], borderRadius: widget.border),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            CustomTextField(hintText: widget.searchHintText),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                child: Observer(builder: (context) {
                  return ListView.builder(
                    itemCount: _choicedList.length,
                    itemBuilder: (context, index) {
                      TodoModel todo = _choicedList[index];
                      return ListComponent(
                        feito: todo.feito,
                        todo: todo.todo,
                        indexOnDatabase: todo.id,
                      );
                    },
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
