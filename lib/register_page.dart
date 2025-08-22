import 'package:flutter/material.dart';
import 'package:hsi_sandbox_latihan_4/widgets/back_nav_button.dart';
import 'package:hsi_sandbox_latihan_4/widgets/labeled_text_field.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // disable Flutter’s default back
        title: const BackNavButton(),
        elevation: 0,
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Divider(height: 1, color: Color(0xFFEFEEF0)),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            Text("Register", style: Theme.of(context).textTheme.headlineLarge),
            const SizedBox(height: 8),
            Text(
              "And start taking notes",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 32),
            LabeledTextField(label: "Full Name", hint: "Example: John Doe"),
            const SizedBox(height: 16),
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
                  Navigator.pop(context);
                },
                child: const Text("Register"),
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: GestureDetector(
                onTap: () {
                  // print("Login text clicked"); // log in terminal
                  Navigator.pop(context);
                },
                child: Text(
                  "Already have an account? Login here",
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
