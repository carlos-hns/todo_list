import 'package:flutter/material.dart';
import 'package:todo_list/models/todo_model.dart';
import 'package:todo_list/stores/todo_store.dart';

TodoStore todoStore = TodoStore();

class ListComponent extends StatelessWidget {
  
  int arrayIndex;
  TodoModel todo;
  ListComponent({TodoModel this.todo, this.arrayIndex});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        todo.feito = !todo.feito;
        switch (todo.tipoDoTodo) {
          case "diario":
            await todoStore.updateItemDiario(arrayIndex, todo);
            break;
          case "semanal":
            await todoStore.updateItemSemanal(arrayIndex, todo);
            break;
          case "mensal":
            await todoStore.updateItemMensal(arrayIndex, todo);
            break;
        }
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
            shape: BoxShape.rectangle),
        padding: EdgeInsets.symmetric(horizontal: 20),
        margin: EdgeInsets.only(top: 10, left: 55, right: 60),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Text(
                this.todo.todo,
                style: TextStyle(
                  color: Colors.grey[700],
                  fontFamily: "Abel",
                ),
              ),
            ),
            SizedBox(
              width: 30,
            ),
            CircleAvatar(
              backgroundColor: this.todo.feito ? Colors.green : Colors.orange,
              radius: 8,
            ),
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: () async {
                switch (todo.tipoDoTodo) {
                  case "diario":
                    await todoStore.removeItemDiario(arrayIndex, todo);
                    break;
                  case "semanal":
                    await todoStore.removeItemSemanal(arrayIndex, todo);
                    break;
                  case "mensal":
                    await todoStore.removeItemMensal(arrayIndex, todo);
                    break;
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
