import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:workout_tracker_app/routing/routes.dart';
import 'package:workout_tracker_app/ui/auth/login/view_models/login_viewmodel.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key, required this.viewModel});

  final LoginViewModel viewModel;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _apiKey = TextEditingController(
    text: '',
  );

  void _loginPressed() async {
    await widget.viewModel.loginApi(apiKey: _apiKey.value.text);
    context.go(Routes.home);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextField(
                    controller: _apiKey,
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: AppLocalizations.of(context)!.apiKey,
                    ),
                  ),
                  const SizedBox(height: 16),
                  FilledButton(
                    onPressed: _loginPressed,
                    child: Text(AppLocalizations.of(context)!.login),
                  )
                ]
              )
            )
          ],
        ),
      ),
    );
  }
}
