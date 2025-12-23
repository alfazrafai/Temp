// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coach_profile_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CoachProfileStore on _CoachProfileStore, Store {
  late final _$selectedTabIndexAtom = Atom(
    name: '_CoachProfileStore.selectedTabIndex',
    context: context,
  );

  @override
  int get selectedTabIndex {
    _$selectedTabIndexAtom.reportRead();
    return super.selectedTabIndex;
  }

  @override
  set selectedTabIndex(int value) {
    _$selectedTabIndexAtom.reportWrite(value, super.selectedTabIndex, () {
      super.selectedTabIndex = value;
    });
  }

  late final _$selectedSportIndexAtom = Atom(
    name: '_CoachProfileStore.selectedSportIndex',
    context: context,
  );

  @override
  int get selectedSportIndex {
    _$selectedSportIndexAtom.reportRead();
    return super.selectedSportIndex;
  }

  @override
  set selectedSportIndex(int value) {
    _$selectedSportIndexAtom.reportWrite(value, super.selectedSportIndex, () {
      super.selectedSportIndex = value;
    });
  }

  late final _$selectedCoachingTypeIndexAtom = Atom(
    name: '_CoachProfileStore.selectedCoachingTypeIndex',
    context: context,
  );

  @override
  int get selectedCoachingTypeIndex {
    _$selectedCoachingTypeIndexAtom.reportRead();
    return super.selectedCoachingTypeIndex;
  }

  @override
  set selectedCoachingTypeIndex(int value) {
    _$selectedCoachingTypeIndexAtom.reportWrite(
      value,
      super.selectedCoachingTypeIndex,
      () {
        super.selectedCoachingTypeIndex = value;
      },
    );
  }

  late final _$selectedDateAtom = Atom(
    name: '_CoachProfileStore.selectedDate',
    context: context,
  );

  @override
  DateTime get selectedDate {
    _$selectedDateAtom.reportRead();
    return super.selectedDate;
  }

  @override
  set selectedDate(DateTime value) {
    _$selectedDateAtom.reportWrite(value, super.selectedDate, () {
      super.selectedDate = value;
    });
  }

  late final _$selectedTimeIndexAtom = Atom(
    name: '_CoachProfileStore.selectedTimeIndex',
    context: context,
  );

  @override
  int get selectedTimeIndex {
    _$selectedTimeIndexAtom.reportRead();
    return super.selectedTimeIndex;
  }

  @override
  set selectedTimeIndex(int value) {
    _$selectedTimeIndexAtom.reportWrite(value, super.selectedTimeIndex, () {
      super.selectedTimeIndex = value;
    });
  }

  late final _$numberOfPeopleAtom = Atom(
    name: '_CoachProfileStore.numberOfPeople',
    context: context,
  );

  @override
  int get numberOfPeople {
    _$numberOfPeopleAtom.reportRead();
    return super.numberOfPeople;
  }

  @override
  set numberOfPeople(int value) {
    _$numberOfPeopleAtom.reportWrite(value, super.numberOfPeople, () {
      super.numberOfPeople = value;
    });
  }

  late final _$_CoachProfileStoreActionController = ActionController(
    name: '_CoachProfileStore',
    context: context,
  );

  @override
  void changeTab(int index) {
    final _$actionInfo = _$_CoachProfileStoreActionController.startAction(
      name: '_CoachProfileStore.changeTab',
    );
    try {
      return super.changeTab(index);
    } finally {
      _$_CoachProfileStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeSport(int index) {
    final _$actionInfo = _$_CoachProfileStoreActionController.startAction(
      name: '_CoachProfileStore.changeSport',
    );
    try {
      return super.changeSport(index);
    } finally {
      _$_CoachProfileStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeCoachingType(int index) {
    final _$actionInfo = _$_CoachProfileStoreActionController.startAction(
      name: '_CoachProfileStore.changeCoachingType',
    );
    try {
      return super.changeCoachingType(index);
    } finally {
      _$_CoachProfileStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateDate(DateTime date) {
    final _$actionInfo = _$_CoachProfileStoreActionController.startAction(
      name: '_CoachProfileStore.updateDate',
    );
    try {
      return super.updateDate(date);
    } finally {
      _$_CoachProfileStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeTime(int index) {
    final _$actionInfo = _$_CoachProfileStoreActionController.startAction(
      name: '_CoachProfileStore.changeTime',
    );
    try {
      return super.changeTime(index);
    } finally {
      _$_CoachProfileStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPeople(int value) {
    final _$actionInfo = _$_CoachProfileStoreActionController.startAction(
      name: '_CoachProfileStore.setPeople',
    );
    try {
      return super.setPeople(value);
    } finally {
      _$_CoachProfileStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void incrementPeople() {
    final _$actionInfo = _$_CoachProfileStoreActionController.startAction(
      name: '_CoachProfileStore.incrementPeople',
    );
    try {
      return super.incrementPeople();
    } finally {
      _$_CoachProfileStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementPeople() {
    final _$actionInfo = _$_CoachProfileStoreActionController.startAction(
      name: '_CoachProfileStore.decrementPeople',
    );
    try {
      return super.decrementPeople();
    } finally {
      _$_CoachProfileStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedTabIndex: ${selectedTabIndex},
selectedSportIndex: ${selectedSportIndex},
selectedCoachingTypeIndex: ${selectedCoachingTypeIndex},
selectedDate: ${selectedDate},
selectedTimeIndex: ${selectedTimeIndex},
numberOfPeople: ${numberOfPeople}
    ''';
  }
}
