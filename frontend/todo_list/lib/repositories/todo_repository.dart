import 'dart:convert';
import 'package:todo_list/models/todo_model.dart';
import 'package:http/http.dart' as http;

class TodoRepository {

  static const _URL_BASE = "http://localhost:8080/todos";

  Future<List<TodoModel>> _getTodosByUrl(String url) async {
    final response = await http.get(url);
    final todosEmJson = json.decode(response.body);
    List<TodoModel> todoList = [];
    for(dynamic todo in todosEmJson){
      todoList.add(TodoModel.fromJson(todo));
    }
    return todoList;
  }

  String _getUrl({String tipoDoTodo, String filtro}){
    if (tipoDoTodo == null && filtro == null) return _URL_BASE;
    String urlTodos = "$_URL_BASE?";
    switch(tipoDoTodo){
      case "diario":
        urlTodos += "tipoDoTodo=diario";
        break;
      case 'semanal':
        urlTodos += "tipoDoTodo=semanal";
        break;
      case 'mensal':
        urlTodos += "tipoDoTodo=mensal";
        break;
    }
    if (tipoDoTodo == null && filtro != null) urlTodos += "filtro=$filtro";
    if (tipoDoTodo != null && filtro != null) urlTodos += "&filtro=$filtro";
    return urlTodos;
  }

  Future<List<TodoModel>> getTodos({String tipoDoTodo, String filtro}) 
      =>  _getTodosByUrl(_getUrl(tipoDoTodo: tipoDoTodo, filtro: filtro));
  

  Future<String> createTodo(TodoModel todo) async {
    final response = await http.post(_URL_BASE, body: todo.toResponseMap());
    return response.body;
  }

  Future<String> deleteTodoById(int id) async {
    String newUrl = "$_URL_BASE/$id";
    final response = await http.delete(newUrl);
    return response.body;
  }

  Future<String> updateTodo(TodoModel todo) async {
    String newUrl = "$_URL_BASE/${todo.id}";
    final response = await http.patch(newUrl, body: todo.toResponseMap());
    return response.body;
  }

}