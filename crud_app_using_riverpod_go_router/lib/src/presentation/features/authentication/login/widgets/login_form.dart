import 'package:crud_app_using_riverpod_go_router/src/presentation/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/router/routes.dart';
import '../riverpod/login_provider.dart';

part '../view/login_view.dart';

class _LoginForm extends StatefulWidget {
  const _LoginForm({
    required this.emailController,
    required this.passwordController,
  });

  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  State<_LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<_LoginForm> {
  final ValueNotifier<bool> _isPasswordVisible = ValueNotifier(false);

  @override
  void dispose() {
    _isPasswordVisible.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final formKey = context
        .findAncestorStateOfType<_LoginViewState>()!
        ._formKey;
    return Column(
      children: [
        TextFormField(
          controller: widget.emailController,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Email',
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue, width: 2.0),
            ),
          ),
          autovalidateMode: AutovalidateMode.onUserInteraction,
          onTapOutside: (event) => FocusScope.of(context).unfocus(),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Email is required";
            } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
              return 'Enter a valid email';
            }
            return null;
          },
        ),
        SizedBox(height: 10),
        ValueListenableBuilder(
          valueListenable: _isPasswordVisible,
          builder: (context, isPasswordVisible, child) {
            return TextFormField(
              controller: widget.passwordController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Password',
                suffixIcon: GestureDetector(
                  onTap: () => _isPasswordVisible.value = !isPasswordVisible,
                  child: Icon(
                    isPasswordVisible
                        ? Icons.remove_red_eye
                        : Icons.visibility_off,
                    color: Colors.grey,
                  ),
                ),

                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2.0),
                ),
              ),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              onTapOutside: (event) => FocusScope.of(context).unfocus(),
              obscureText: !isPasswordVisible,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Password is required';
                }
                return null;
              },
            );
          },
        ),
      ],
    );
  }
}
