import 'package:app/app/widgets/custom_text_field.dart';
import 'package:app/app/widgets/my_button.dart';
import 'package:app/app/stores/global_store.dart';
// import 'package:app/stores/login_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
    this.register = false,
    required this.store,
    required this.title,
    required this.onPressed,
  });

  final String title;
  final GlobalStore store;
  final void Function(BuildContext) onPressed;
  final bool register;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (register)
                CustomTextField(
                  isObscure: false,
                  hint: 'Nome',
                  onChanged: store.setName,
                )
              else
                const SizedBox(),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                hint: 'E-mail',
                textInputType: TextInputType.emailAddress,
                onChanged: store.setEmail,
                isObscure: false,
              ),
              const SizedBox(
                height: 10,
              ),
              Observer(
                builder: (context) {
                  return CustomTextField(
                    hint: 'Senha',
                    textInputType: TextInputType.visiblePassword,
                    onChanged: store.setPassword,
                    isObscure: store.passwordVisibility,
                    suffixIcon: IconButton(
                      onPressed: store.setPasswordVisibility,
                      icon: store.passwordVisibility
                          ? const Icon(Icons.visibility)
                          : const Icon(Icons.visibility_off),
                    ),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Observer(builder: (context) {
                  return MyButton(
                    text: title,
                    onPressed: onPressed,
                    enable: store.isFormValid,
                    filled: true,
                  );
                }),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
