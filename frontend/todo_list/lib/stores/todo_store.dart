import 'package:mobx/mobx.dart';
import 'package:todo_list/models/todo_model.dart';
import 'package:todo_list/repositories/todo_repository.dart';
part 'todo_store.g.dart';

final todoRepository = TodoRepository();

class TodoStore = _TodoStoreBase with _$TodoStore;

abstract class _TodoStoreBase with Store {  
  
  @observable
  ObservableList<TodoModel> todosDiarios = ObservableList<TodoModel>();
  ObservableList<TodoModel> todosSemanais = ObservableList<TodoModel>();
  ObservableList<TodoModel> todosMensais = ObservableList<TodoModel>();

  @action
  Future<void> addItemDiario(TodoModel todo) async {
    await todoRepository.createTodo(todo);
    todosDiarios.add(todo);
  }

  Future<void> removeItemDiario(int arrayIndex, TodoModel todo) async {
    await todoRepository.deleteTodoById(todo.id);
    print("Teste");
    todosDiarios.removeAt(arrayIndex);
    print("Teste");
  }

  @action
  Future<void> updateItemDiario(int arrayIndex, TodoModel todo) async {
    await todoRepository.updateTodo(todo);
    setItensDiarios();
  }

  @action
  Future<void> setItensDiarios({String filtro}) async {
    todosDiarios.clear();
    for(TodoModel todo in await todoRepository.getTodos(tipoDoTodo: "diario", filtro: filtro)){
        todosDiarios.add(todo);
    }
  }

  @action
  Future<void> addItemSemanal(TodoModel todo) async {
    await todoRepository.createTodo(todo);
    todosSemanais.add(todo);
  }

  @action
  Future<void> removeItemSemanal(int arrayIndex, TodoModel todo) async {
    await todoRepository.deleteTodoById(todo.id);
    todosSemanais.removeAt(arrayIndex);
  }

  @action
  Future<void> updateItemSemanal(int arrayIndex, TodoModel todo) async {
    await todoRepository.updateTodo(todo);
    todosSemanais[arrayIndex] = todo;
  }

  @action
  Future<void> setItensSemanais({String filtro}) async {
    todosSemanais.clear();
    for(TodoModel todo in await todoRepository.getTodos(tipoDoTodo: "semanal", filtro: filtro)){
        todosSemanais.add(todo);
    }
  }
  
  @action
  Future<void> addItemMensal(TodoModel todo) async {
    await todoRepository.createTodo(todo);
    todosMensais.add(todo);
  }

  @action
  Future<void> removeItemMensal(int arrayIndex, TodoModel todo) async {
    await todoRepository.deleteTodoById(todo.id);
    todosMensais.removeAt(arrayIndex);
  }

  @action
  Future<void> updateItemMensal(int arrayIndex, TodoModel todo) async {
    await todoRepository.updateTodo(todo);
    todosMensais[arrayIndex] = todo;
  }

  @action
  Future<void> setItensMensais({String filtro}) async {
    todosMensais.clear();
    for(TodoModel todo in await todoRepository.getTodos(tipoDoTodo: "mensal", filtro: filtro)){
        todosMensais.add(todo);
    }
  }
  
}