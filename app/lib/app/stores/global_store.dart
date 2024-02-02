import 'package:app/app/utils/client.dart';
import 'package:mobx/mobx.dart';
part 'global_store.g.dart';

final RegExp emailRegExp = RegExp(r'^[a-zA-Z0-9]+@+email.com$|.br$');

class GlobalStore = _GlobalStore with _$GlobalStore;

abstract class _GlobalStore with Store {
  final Client client = Client();

  @observable
  String name = '';

  @observable
  String email = '';

  @observable
  String password = '';

  @observable
  String title = '';

  @observable
  bool passwordVisibility = true;

  @observable
  bool loading = false;

  @observable
  String token = '';

  @observable
  bool isLoged = false;

  @observable
  bool created = false;

  @observable
  List<dynamic> tasks = [];

  @computed
  bool get isFormValid => emailRegExp.hasMatch(email) && password.length >= 4;

  @action
  void setName(String value) => name = value;

  @action
  void setEmail(String text) => email = text;

  @action
  void setPassword(String value) => password = value;

  @action
  void setTitle(String value) => title = value;

  @action
  void setPasswordVisibility() => passwordVisibility = !passwordVisibility;

  @action
  void setIsLoged() => isLoged = !isLoged;

  @action
  void setTasks(List<dynamic> values) => tasks = values;

  @action
  Future<void> signin() async {
    await client.post(
      data: {
        "name": name,
        "email": email,
        "password": password,
      },
      route: '/user',
    );

    login();
    name = '';
  }

  @action
  Future<void> login() async {
    loading = true;

    var response = await client.post(
      data: {
        "email": email,
        "password": password,
      },
      route: '/user/login',
    );

    email = '';
    password = '';
    loading = false;

    if (response.containsKey('token')) {
      token = response['token'].toString();
      email = '';
      password = '';
      loading = false;
      isLoged = true;
    } else {
      email = '';
      password = '';
      loading = false;
    }
  }

  Future<void> createTask() async {
    await client.post(
      data: {
        "title": title,
      },
      route: '/task',
      token: token,
    );

    tasks = await client.getTasks(
      token: token,
      route: '/task',
    );
  }

  Future<void> updateTask(bool concluded, int taskId) async {
    await client.updateTask(
      task: {
        "concluded": concluded,
      },
      token: token,
      taskId: taskId,
    );

    tasks = await client.getTasks(
      token: token,
      route: '/task',
    );
  }

  Future<void> deleteTask(int taskId) async {
    await client.deleteTask(token: token, taskId: taskId);

    tasks = await client.getTasks(
      token: token,
      route: '/task',
    );
  }
}
