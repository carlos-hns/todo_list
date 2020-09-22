import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:todo_list/models/todo_model.dart';
import 'package:todo_list/pages/components/list_component.dart';
import 'package:todo_list/stores/todo_store.dart';

import 'costom_textfield.dart';

TodoStore todoStore = TodoStore();

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
    todoStore.setItensDiarios();
    todoStore.setItensSemanais();
    todoStore.setItensMensais();
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
                padding: EdgeInsets.only(bottom: 50),
                child: Observer(
                  builder: (context) {
                    if (widget.searchHintText == "Dia") {
                      return ListView.builder(
                        itemCount: todoStore.todosDiarios.length,
                        itemBuilder: (context, index) {
                          TodoModel todo = todoStore.todosDiarios[index];
                          return ListComponent(
                            arrayIndex: index,
                            todo: todo,
                          );
                        },
                      );
                    } else if (widget.searchHintText == "Semana") {
                      return ListView.builder(
                        itemCount: todoStore.todosSemanais.length,
                        itemBuilder: (context, index) {
                          TodoModel todo = todoStore.todosSemanais[index];
                          return ListComponent(
                            arrayIndex: index,
                            todo: todo,
                          );
                        },
                      );
                    } else {
                      return ListView.builder(
                        itemCount: todoStore.todosMensais.length,
                        itemBuilder: (context, index) {
                          TodoModel todo = todoStore.todosMensais[index];
                          return ListComponent(
                            arrayIndex: index,
                            todo: todo,
                          );
                        },
                      );
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
