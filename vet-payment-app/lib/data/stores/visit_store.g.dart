// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visit_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$VisitStore on VisitController, Store {
  late final _$isAuthenticatedAtom =
      Atom(name: 'VisitController.isAuthenticated', context: context);

  @override
  bool get isAuthenticated {
    _$isAuthenticatedAtom.reportRead();
    return super.isAuthenticated;
  }

  @override
  set isAuthenticated(bool value) {
    _$isAuthenticatedAtom.reportWrite(value, super.isAuthenticated, () {
      super.isAuthenticated = value;
    });
  }

  late final _$visitsAtom =
      Atom(name: 'VisitController.visits', context: context);

  @override
  List<Visit> get visits {
    _$visitsAtom.reportRead();
    return super.visits;
  }

  @override
  set visits(List<Visit> value) {
    _$visitsAtom.reportWrite(value, super.visits, () {
      super.visits = value;
    });
  }

  late final _$chosenVisitCardIndexAtom =
      Atom(name: 'VisitController.chosenVisitCardIndex', context: context);

  @override
  int get chosenVisitCardIndex {
    _$chosenVisitCardIndexAtom.reportRead();
    return super.chosenVisitCardIndex;
  }

  @override
  set chosenVisitCardIndex(int value) {
    _$chosenVisitCardIndexAtom.reportWrite(value, super.chosenVisitCardIndex,
        () {
      super.chosenVisitCardIndex = value;
    });
  }

  late final _$chosenVisitCardVisitIdAtom =
      Atom(name: 'VisitController.chosenVisitCardVisitId', context: context);

  @override
  int get chosenVisitCardVisitId {
    _$chosenVisitCardVisitIdAtom.reportRead();
    return super.chosenVisitCardVisitId;
  }

  @override
  set chosenVisitCardVisitId(int value) {
    _$chosenVisitCardVisitIdAtom
        .reportWrite(value, super.chosenVisitCardVisitId, () {
      super.chosenVisitCardVisitId = value;
    });
  }

  late final _$loginAsyncAction =
      AsyncAction('VisitController.login', context: context);

  @override
  Future<void> login(String email) {
    return _$loginAsyncAction.run(() => super.login(email));
  }

  late final _$payVisitAsyncAction =
      AsyncAction('VisitController.payVisit', context: context);

  @override
  Future<void> payVisit() {
    return _$payVisitAsyncAction.run(() => super.payVisit());
  }

  late final _$VisitControllerActionController =
      ActionController(name: 'VisitController', context: context);

  @override
  void logout() {
    final _$actionInfo = _$VisitControllerActionController.startAction(
        name: 'VisitController.logout');
    try {
      return super.logout();
    } finally {
      _$VisitControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateValues(int index) {
    final _$actionInfo = _$VisitControllerActionController.startAction(
        name: 'VisitController.updateValues');
    try {
      return super.updateValues(index);
    } finally {
      _$VisitControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isAuthenticated: ${isAuthenticated},
visits: ${visits},
chosenVisitCardIndex: ${chosenVisitCardIndex},
chosenVisitCardVisitId: ${chosenVisitCardVisitId}
    ''';
  }
}
