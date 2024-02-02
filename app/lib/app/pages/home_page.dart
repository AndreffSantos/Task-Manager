// import 'package:app/app/pages/login_page.dart';
import 'package:app/app/widgets/app_bar.dart';
import 'package:app/app/widgets/my_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    required this.title,
  });

  final String title;

  void navigateToLogin(BuildContext context) {
    Navigator.pushNamed(context, '/login');
  }

  void navigateToRegister(BuildContext context) {
    Navigator.pushNamed(context, '/signup');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: 'Lista de tarefas'),
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(16),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                textBaseline: TextBaseline.alphabetic,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Center(
                    child: Text(
                      'Tasks',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ),
                  const Center(
                    child: Text(
                      'O app gerenciador de tarefas',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        MyButton(
                          text: 'Login',
                          filled: true,
                          onPressed: navigateToLogin,
                          enable: true,
                        ),
                        MyButton(
                          text: 'Sign Up',
                          onPressed: navigateToRegister,
                          enable: true,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
