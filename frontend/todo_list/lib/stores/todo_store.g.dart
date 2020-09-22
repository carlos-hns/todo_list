// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TodoStore on _TodoStoreBase, Store {
  final _$todosDiariosAtom = Atom(name: '_TodoStoreBase.todosDiarios');

  @override
  ObservableList<TodoModel> get todosDiarios {
    _$todosDiariosAtom.reportRead();
    return super.todosDiarios;
  }

  @override
  set todosDiarios(ObservableList<TodoModel> value) {
    _$todosDiariosAtom.reportWrite(value, super.todosDiarios, () {
      super.todosDiarios = value;
    });
  }

  final _$addItemDiarioAsyncAction =
      AsyncAction('_TodoStoreBase.addItemDiario');

  @override
  Future<void> addItemDiario(TodoModel todo) {
    return _$addItemDiarioAsyncAction.run(() => super.addItemDiario(todo));
  }

  final _$updateItemDiarioAsyncAction =
      AsyncAction('_TodoStoreBase.updateItemDiario');

  @override
  Future<void> updateItemDiario(int arrayIndex, TodoModel todo) {
    return _$updateItemDiarioAsyncAction
        .run(() => super.updateItemDiario(arrayIndex, todo));
  }

  final _$setItensDiariosAsyncAction =
      AsyncAction('_TodoStoreBase.setItensDiarios');

  @override
  Future<void> setItensDiarios({String filtro}) {
    return _$setItensDiariosAsyncAction
        .run(() => super.setItensDiarios(filtro: filtro));
  }

  final _$addItemSemanalAsyncAction =
      AsyncAction('_TodoStoreBase.addItemSemanal');

  @override
  Future<void> addItemSemanal(TodoModel todo) {
    return _$addItemSemanalAsyncAction.run(() => super.addItemSemanal(todo));
  }

  final _$removeItemSemanalAsyncAction =
      AsyncAction('_TodoStoreBase.removeItemSemanal');

  @override
  Future<void> removeItemSemanal(int arrayIndex, TodoModel todo) {
    return _$removeItemSemanalAsyncAction
        .run(() => super.removeItemSemanal(arrayIndex, todo));
  }

  final _$updateItemSemanalAsyncAction =
      AsyncAction('_TodoStoreBase.updateItemSemanal');

  @override
  Future<void> updateItemSemanal(int arrayIndex, TodoModel todo) {
    return _$updateItemSemanalAsyncAction
        .run(() => super.updateItemSemanal(arrayIndex, todo));
  }

  final _$setItensSemanaisAsyncAction =
      AsyncAction('_TodoStoreBase.setItensSemanais');

  @override
  Future<void> setItensSemanais({String filtro}) {
    return _$setItensSemanaisAsyncAction
        .run(() => super.setItensSemanais(filtro: filtro));
  }

  final _$addItemMensalAsyncAction =
      AsyncAction('_TodoStoreBase.addItemMensal');

  @override
  Future<void> addItemMensal(TodoModel todo) {
    return _$addItemMensalAsyncAction.run(() => super.addItemMensal(todo));
  }

  final _$removeItemMensalAsyncAction =
      AsyncAction('_TodoStoreBase.removeItemMensal');

  @override
  Future<void> removeItemMensal(int arrayIndex, TodoModel todo) {
    return _$removeItemMensalAsyncAction
        .run(() => super.removeItemMensal(arrayIndex, todo));
  }

  final _$updateItemMensalAsyncAction =
      AsyncAction('_TodoStoreBase.updateItemMensal');

  @override
  Future<void> updateItemMensal(int arrayIndex, TodoModel todo) {
    return _$updateItemMensalAsyncAction
        .run(() => super.updateItemMensal(arrayIndex, todo));
  }

  final _$setItensMensaisAsyncAction =
      AsyncAction('_TodoStoreBase.setItensMensais');

  @override
  Future<void> setItensMensais({String filtro}) {
    return _$setItensMensaisAsyncAction
        .run(() => super.setItensMensais(filtro: filtro));
  }

  @override
  String toString() {
    return '''
todosDiarios: ${todosDiarios}
    ''';
  }
}
