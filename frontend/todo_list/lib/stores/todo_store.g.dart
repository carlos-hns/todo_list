// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TodoStore on _TodoStoreBase, Store {
  final _$todosDiariosAtom = Atom(name: '_TodoStoreBase.todosDiarios');

  @override
  ObservableList<dynamic> get todosDiarios {
    _$todosDiariosAtom.reportRead();
    return super.todosDiarios;
  }

  @override
  set todosDiarios(ObservableList<dynamic> value) {
    _$todosDiariosAtom.reportWrite(value, super.todosDiarios, () {
      super.todosDiarios = value;
    });
  }

  final _$todosSemanaisAtom = Atom(name: '_TodoStoreBase.todosSemanais');

  @override
  ObservableList<dynamic> get todosSemanais {
    _$todosSemanaisAtom.reportRead();
    return super.todosSemanais;
  }

  @override
  set todosSemanais(ObservableList<dynamic> value) {
    _$todosSemanaisAtom.reportWrite(value, super.todosSemanais, () {
      super.todosSemanais = value;
    });
  }

  final _$todosMensaisAtom = Atom(name: '_TodoStoreBase.todosMensais');

  @override
  ObservableList<dynamic> get todosMensais {
    _$todosMensaisAtom.reportRead();
    return super.todosMensais;
  }

  @override
  set todosMensais(ObservableList<dynamic> value) {
    _$todosMensaisAtom.reportWrite(value, super.todosMensais, () {
      super.todosMensais = value;
    });
  }

  final _$setItensDiariosAsyncAction =
      AsyncAction('_TodoStoreBase.setItensDiarios');

  @override
  Future<void> setItensDiarios() {
    return _$setItensDiariosAsyncAction.run(() => super.setItensDiarios());
  }

  final _$_TodoStoreBaseActionController =
      ActionController(name: '_TodoStoreBase');

  @override
  void addItemDiario(int index, TodoModel todo) {
    final _$actionInfo = _$_TodoStoreBaseActionController.startAction(
        name: '_TodoStoreBase.addItemDiario');
    try {
      return super.addItemDiario(index, todo);
    } finally {
      _$_TodoStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeItemDiario(int index) {
    final _$actionInfo = _$_TodoStoreBaseActionController.startAction(
        name: '_TodoStoreBase.removeItemDiario');
    try {
      return super.removeItemDiario(index);
    } finally {
      _$_TodoStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateItemDiario(int index, TodoModel todo) {
    final _$actionInfo = _$_TodoStoreBaseActionController.startAction(
        name: '_TodoStoreBase.updateItemDiario');
    try {
      return super.updateItemDiario(index, todo);
    } finally {
      _$_TodoStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
todosDiarios: ${todosDiarios},
todosSemanais: ${todosSemanais},
todosMensais: ${todosMensais}
    ''';
  }
}
