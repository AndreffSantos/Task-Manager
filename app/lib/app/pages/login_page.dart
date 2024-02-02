import 'package:app/app/pages/list_page.dart';
import 'package:app/app/widgets/app_bar.dart';
import 'package:app/app/widgets/my_card.dart';
import 'package:app/app/stores/global_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key, required this.title});

  final String title;

  void navigation(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const ListPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final store = context.read<GlobalStore>();

    reaction(
      (_) => store.isLoged,
      (isLoged) {
        if (isLoged) {
          navigation(context);
        }
      },
    );

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      appBar: MyAppBar(title: title),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(16),
          child: Observer(
            builder: (context) {
              return Center(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: !store.loading
                      ? MyCard(
                          store: store,
                          title: title,
                          onPressed: (context) => store.login(),
                        )
                      : const CircularProgressIndicator(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
