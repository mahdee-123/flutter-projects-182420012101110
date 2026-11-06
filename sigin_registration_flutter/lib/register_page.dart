import 'package:flutter/material.dart';
import 'auth_field.dart';
import 'validators.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _phone = TextEditingController();
  final _password = TextEditingController();
  final _confirm = TextEditingController();

  bool _agreed = false;
  bool _showTermsError = false;

  @override
  void dispose() {
    _name.dispose();
    _email.dispose();
    _phone.dispose();
    _password.dispose();
    _confirm.dispose();
    super.dispose();
  }

  String? _confirmValidator(String? v) {
    if (v == null || v.isEmpty) return 'Password abar dao';
    if (v != _password.text) return 'Password mile nai';
    return null;
  }

  void _submit() {
    final formOk = _formKey.currentState!.validate();
    setState(() => _showTermsError = !_agreed);

    if (formOk && _agreed) {
      // TODO: ekhane API / Firebase register call korbe
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Registered: ${_email.text.trim()}')),
      );
      Navigator.pop(context); // Sign in page-e fire jao
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Register'), centerTitle: true),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 420),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AuthField(
                    controller: _name,
                    label: 'Full Name',
                    icon: Icons.person_outline,
                    validator: Validators.name,
                  ),
                  const SizedBox(height: 16),
                  AuthField(
                    controller: _email,
                    label: 'Email',
                    icon: Icons.email_outlined,
                    keyboardType: TextInputType.emailAddress,
                    validator: Validators.email,
                  ),
                  const SizedBox(height: 16),
                  AuthField(
                    controller: _phone,
                    label: 'Phone (01XXXXXXXXX)',
                    icon: Icons.phone_outlined,
                    keyboardType: TextInputType.phone,
                    validator: Validators.phone,
                  ),
                  const SizedBox(height: 16),
                  AuthField(
                    controller: _password,
                    label: 'Password',
                    icon: Icons.lock_outline,
                    isPassword: true,
                    validator: Validators.newPassword,
                  ),
                  const SizedBox(height: 16),
                  AuthField(
                    controller: _confirm,
                    label: 'Confirm Password',
                    icon: Icons.lock_reset,
                    isPassword: true,
                    textInputAction: TextInputAction.done,
                    validator: _confirmValidator,
                  ),
                  const SizedBox(height: 8),
                  CheckboxListTile(
                    value: _agreed,
                    onChanged: (v) => setState(() {
                      _agreed = v ?? false;
                      _showTermsError = false;
                    }),
                    controlAffinity: ListTileControlAffinity.leading,
                    contentPadding: EdgeInsets.zero,
                    title: const Text('Terms & Conditions e agree'),
                  ),
                  if (_showTermsError)
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Agree korte hobe',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.error,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: FilledButton(
                      onPressed: _submit,
                      child: const Text('Create Account'),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Already account ache?'),
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('Sign In'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}