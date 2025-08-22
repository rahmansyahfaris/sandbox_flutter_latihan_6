import 'package:flutter/material.dart';
import 'package:hsi_sandbox_latihan_4/widgets/labeled_text_field.dart';
import 'note_list_page.dart';
import 'register_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 60),
            Text(
              "Let’s Login",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(height: 8),
            Text(
              "Add notes to your ideas",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 32),
            LabeledTextField(label: "Email Address", hint: "example@mail.com"),
            const SizedBox(height: 16),
            LabeledTextField(
              label: "Password",
              hint: "*******",
              obscureText: true,
            ),
            const SizedBox(height: 56),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NoteListPage(),
                    ),
                  );
                },
                child: const Text("Login"),
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: GestureDetector(
                onTap: () {
                  // print("Register text clicked"); // log in terminal
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RegisterPage(),
                    ),
                  );
                },
                child: Text(
                  "Don't have any account? Register here",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    height: 1.4,
                    color: Color(0xFF394675),
                    decoration: TextDecoration.none, // remove underline
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
