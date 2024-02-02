import 'package:app/app/pages/home_page.dart';
import 'package:app/app/pages/list_page.dart';
import 'package:app/app/pages/login_page.dart';
import 'package:app/app/pages/register_page.dart';
import 'package:app/app/stores/global_store.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (_) => GlobalStore()),
      ],
      child: MaterialApp(
          // debugShowCheckedModeBanner: false,
          title: 'Tarefas',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
            useMaterial3: true,
          ),
          routes: {
            '/login': (context) => const LoginPage(title: 'Login'),
            '/list': (context) => const ListPage(),
            '/signup': (context) => const RegisterPage(title: 'Sign Up')
          },
          home: const HomePage(title: 'Lista de Tarefas')),
    );
  }
}
