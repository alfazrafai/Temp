// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'live_signals_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LiveSignalsStore on _LiveSignalsStore, Store {
  late final _$selectedFilterAtom = Atom(
    name: '_LiveSignalsStore.selectedFilter',
    context: context,
  );

  @override
  int get selectedFilter {
    _$selectedFilterAtom.reportRead();
    return super.selectedFilter;
  }

  @override
  set selectedFilter(int value) {
    _$selectedFilterAtom.reportWrite(value, super.selectedFilter, () {
      super.selectedFilter = value;
    });
  }

  late final _$_LiveSignalsStoreActionController = ActionController(
    name: '_LiveSignalsStore',
    context: context,
  );

  @override
  void changeFilter(int index) {
    final _$actionInfo = _$_LiveSignalsStoreActionController.startAction(
      name: '_LiveSignalsStore.changeFilter',
    );
    try {
      return super.changeFilter(index);
    } finally {
      _$_LiveSignalsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedFilter: ${selectedFilter}
    ''';
  }
}
