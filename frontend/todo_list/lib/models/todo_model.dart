class TodoModel {
  int id;
  String todo;
  String tipoDoTodo;
  bool feito;

  TodoModel({this.id, this.todo, this.tipoDoTodo, this.feito});

  TodoModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    todo = json['todo'];
    tipoDoTodo = json['tipoDoTodo'];
    feito = json['feito'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['todo'] = this.todo;
    data['tipoDoTodo'] = this.tipoDoTodo;
    data['feito'] = this.feito;
    return data;
  }

  Map<String, dynamic> toResponseMap() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id.toString();
    data['todo'] = this.todo;
    data['tipoDoTodo'] = this.tipoDoTodo;
    data['feito'] = this.feito.toString();
    return data;
  }

  @override
  String toString(){
    return "| ${this.id} | ${this.todo} | ${this.tipoDoTodo} | ${this.feito} |\n";
  }

}