import 'package:mobx/mobx.dart';
import 'package:todo_list/models/todo_model.dart';
import 'package:todo_list/repositories/todo_repository.dart';
part 'todo_store.g.dart';

class TodoStore = _TodoStoreBase with _$TodoStore;

abstract class _TodoStoreBase with Store {
  
  final todoRepository = TodoRepository();

  @observable
  ObservableList todosDiarios = ObservableList<TodoModel>();

  @observable
  ObservableList todosSemanais = ObservableList<TodoModel>();

  @observable
  ObservableList todosMensais = ObservableList<TodoModel>();

  @action
  void addItemDiario(int index, TodoModel todo){
    todoRepository.createTodo(todo);
    todosDiarios.removeAt(index);
  }

  @action
  void removeItemDiario(int index){
    todoRepository.deleteTodoById(todosDiarios[index].id);
    todosDiarios.removeAt(index);
  }

  @action
  void updateItemDiario(int index, TodoModel todo){
    todoRepository.deleteTodoById(todosDiarios[index].id);
    todosDiarios.removeAt(index);
  }

  @action
  Future<void> setItensDiarios() async {
    todosDiarios.clear();
    for(TodoModel todo in await todoRepository.getTodos()){
        todosDiarios.add(todo);
    }
  }

}