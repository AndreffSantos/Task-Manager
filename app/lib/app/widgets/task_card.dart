import 'package:app/app/stores/global_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({
    super.key,
    required this.child,
  });

  final Map<String, dynamic> child;

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<GlobalStore>(context);

    return Observer(
      builder: (context) => Card(
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                height: 100,
                padding: const EdgeInsets.all(8.0),
                child: Text(child['title']),
              ),
            ),
            Expanded(
              child: IconButton(
                onPressed: () {
                  store.updateTask(!child['concluded'], child['id']);
                },
                icon: child['concluded']
                    ? const Icon(Icons.check_box_outline_blank)
                    : const Icon(Icons.check_box_outlined),
              ),
            ),
            Expanded(
              child: IconButton(
                onPressed: () {
                  store.deleteTask(child['id']);
                },
                icon: const Icon(Icons.delete_outline),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
