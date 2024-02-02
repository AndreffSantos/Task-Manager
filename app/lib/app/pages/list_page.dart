import 'package:app/app/utils/client.dart';
import 'package:app/app/widgets/app_bar.dart';
import 'package:app/app/widgets/custom_text_field.dart';
import 'package:app/app/widgets/task_card.dart';
import 'package:app/app/stores/global_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<GlobalStore>(context);
    final Client client = Client();

    autorun(
      (_) async {
        var tasks = await client.getTasks(
          route: '/task',
          token: store.token,
        );
        store.setTasks(tasks);
      },
    );

    return PopScope(
      onPopInvoked: (canPop) {
        if (canPop) {
          store.setIsLoged();
          Navigator.of(context);
        }
      },
      child: Scaffold(
        appBar: const MyAppBar(
          title: 'Lista de Tarefas',
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        body: SafeArea(
          child: Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                CustomTextField(
                  isObscure: false,
                  hint: 'Nova Tarefa',
                  suffixIcon: IconButton(
                    style: const ButtonStyle(
                        iconSize: MaterialStatePropertyAll(40)),
                    onPressed: () {
                      store.createTask();
                    },
                    icon: const Icon(Icons.add),
                  ),
                  onChanged: store.setTitle,
                ),
                Expanded(
                  child: Observer(
                    builder: (context) => ListView.builder(
                      itemCount: store.tasks.length,
                      itemBuilder: (context, index) {
                        return TaskCard(child: store.tasks[index]);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
