// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'global_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$GlobalStore on _GlobalStore, Store {
  Computed<bool>? _$isFormValidComputed;

  @override
  bool get isFormValid =>
      (_$isFormValidComputed ??= Computed<bool>(() => super.isFormValid,
              name: '_GlobalStore.isFormValid'))
          .value;

  late final _$nameAtom = Atom(name: '_GlobalStore.name', context: context);

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  late final _$emailAtom = Atom(name: '_GlobalStore.email', context: context);

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  late final _$passwordAtom =
      Atom(name: '_GlobalStore.password', context: context);

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  late final _$titleAtom = Atom(name: '_GlobalStore.title', context: context);

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  late final _$passwordVisibilityAtom =
      Atom(name: '_GlobalStore.passwordVisibility', context: context);

  @override
  bool get passwordVisibility {
    _$passwordVisibilityAtom.reportRead();
    return super.passwordVisibility;
  }

  @override
  set passwordVisibility(bool value) {
    _$passwordVisibilityAtom.reportWrite(value, super.passwordVisibility, () {
      super.passwordVisibility = value;
    });
  }

  late final _$loadingAtom =
      Atom(name: '_GlobalStore.loading', context: context);

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  late final _$tokenAtom = Atom(name: '_GlobalStore.token', context: context);

  @override
  String get token {
    _$tokenAtom.reportRead();
    return super.token;
  }

  @override
  set token(String value) {
    _$tokenAtom.reportWrite(value, super.token, () {
      super.token = value;
    });
  }

  late final _$isLogedAtom =
      Atom(name: '_GlobalStore.isLoged', context: context);

  @override
  bool get isLoged {
    _$isLogedAtom.reportRead();
    return super.isLoged;
  }

  @override
  set isLoged(bool value) {
    _$isLogedAtom.reportWrite(value, super.isLoged, () {
      super.isLoged = value;
    });
  }

  late final _$createdAtom =
      Atom(name: '_GlobalStore.created', context: context);

  @override
  bool get created {
    _$createdAtom.reportRead();
    return super.created;
  }

  @override
  set created(bool value) {
    _$createdAtom.reportWrite(value, super.created, () {
      super.created = value;
    });
  }

  late final _$tasksAtom = Atom(name: '_GlobalStore.tasks', context: context);

  @override
  List<dynamic> get tasks {
    _$tasksAtom.reportRead();
    return super.tasks;
  }

  @override
  set tasks(List<dynamic> value) {
    _$tasksAtom.reportWrite(value, super.tasks, () {
      super.tasks = value;
    });
  }

  late final _$signinAsyncAction =
      AsyncAction('_GlobalStore.signin', context: context);

  @override
  Future<void> signin() {
    return _$signinAsyncAction.run(() => super.signin());
  }

  late final _$loginAsyncAction =
      AsyncAction('_GlobalStore.login', context: context);

  @override
  Future<void> login() {
    return _$loginAsyncAction.run(() => super.login());
  }

  late final _$_GlobalStoreActionController =
      ActionController(name: '_GlobalStore', context: context);

  @override
  void setName(String value) {
    final _$actionInfo = _$_GlobalStoreActionController.startAction(
        name: '_GlobalStore.setName');
    try {
      return super.setName(value);
    } finally {
      _$_GlobalStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmail(String text) {
    final _$actionInfo = _$_GlobalStoreActionController.startAction(
        name: '_GlobalStore.setEmail');
    try {
      return super.setEmail(text);
    } finally {
      _$_GlobalStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(String value) {
    final _$actionInfo = _$_GlobalStoreActionController.startAction(
        name: '_GlobalStore.setPassword');
    try {
      return super.setPassword(value);
    } finally {
      _$_GlobalStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTitle(String value) {
    final _$actionInfo = _$_GlobalStoreActionController.startAction(
        name: '_GlobalStore.setTitle');
    try {
      return super.setTitle(value);
    } finally {
      _$_GlobalStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPasswordVisibility() {
    final _$actionInfo = _$_GlobalStoreActionController.startAction(
        name: '_GlobalStore.setPasswordVisibility');
    try {
      return super.setPasswordVisibility();
    } finally {
      _$_GlobalStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoged() {
    final _$actionInfo = _$_GlobalStoreActionController.startAction(
        name: '_GlobalStore.setIsLoged');
    try {
      return super.setIsLoged();
    } finally {
      _$_GlobalStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTasks(List<dynamic> values) {
    final _$actionInfo = _$_GlobalStoreActionController.startAction(
        name: '_GlobalStore.setTasks');
    try {
      return super.setTasks(values);
    } finally {
      _$_GlobalStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
email: ${email},
password: ${password},
title: ${title},
passwordVisibility: ${passwordVisibility},
loading: ${loading},
token: ${token},
isLoged: ${isLoged},
created: ${created},
tasks: ${tasks},
isFormValid: ${isFormValid}
    ''';
  }
}
