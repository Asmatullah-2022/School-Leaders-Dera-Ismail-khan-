import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../core/error/result.dart';
import '../../../../core/localization/l10n_gen/app_localizations.dart';
import '../../../../core/utils/validators.dart';
import '../../../../core/widgets/app_text_field.dart';
import '../../../../core/widgets/error_view.dart';
import '../../../../core/widgets/offline_banner.dart';
import 'forgot_password_screen.dart';
import '../providers/auth_providers.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isSubmitting = false;
  String? _errorMessage;
  bool _obscurePassword = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    final AppLocalizations l10n = AppLocalizations.of(context);
    if (!(_formKey.currentState?.validate() ?? false)) return;
    setState(() {
      _isSubmitting = true;
      _errorMessage = null;
    });
    final Result<dynamic> result = await ref
        .read(authRepositoryProvider)
        .signIn(email: _emailController.text, password: _passwordController.text);
    if (!mounted) return;
    setState(() => _isSubmitting = false);
    result.when(
      ok: (_) {},
      err: (failure) => setState(() => _errorMessage = ErrorView.messageFor(l10n, failure)),
    );
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            const OfflineBanner(),
            Expanded(
              child: Center(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(24),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 420),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Icon(
                            Icons.school,
                            size: 64,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          const SizedBox(height: 12),
                          Text(
                            AppConstants.appNameFull,
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          const SizedBox(height: 32),
                          Text(
                            l10n.auth_loginTitle,
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                          const SizedBox(height: 20),
                          AppTextField(
                            label: l10n.auth_email,
                            controller: _emailController,
                            keyboardType: TextInputType.emailAddress,
                            forceLtr: true,
                            validator: (v) => _resolve(l10n, Validators.email(v)),
                          ),
                          const SizedBox(height: 16),
                          AppTextField(
                            label: l10n.auth_password,
                            controller: _passwordController,
                            forceLtr: true,
                            obscureText: _obscurePassword,
                            validator: (v) => _resolve(l10n, Validators.required(v)),
                          ),
                          Align(
                            alignment: AlignmentDirectional.centerEnd,
                            child: IconButton(
                              onPressed: () => setState(() => _obscurePassword = !_obscurePassword),
                              icon: Icon(
                                _obscurePassword
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                                size: 20,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                              onPressed: () => Navigator.of(context).push(
                                MaterialPageRoute<void>(
                                  builder: (_) => const ForgotPasswordScreen(),
                                ),
                              ),
                              child: Text(l10n.auth_forgotPassword),
                            ),
                          ),
                          if (_errorMessage != null) ...<Widget>[
                            const SizedBox(height: 8),
                            Text(
                              _errorMessage!,
                              style: TextStyle(color: Theme.of(context).colorScheme.error),
                              textAlign: TextAlign.center,
                            ),
                          ],
                          const SizedBox(height: 16),
                          FilledButton(
                            onPressed: _isSubmitting ? null : _submit,
                            child: _isSubmitting
                                ? const SizedBox(
                                    height: 20,
                                    width: 20,
                                    child: CircularProgressIndicator(strokeWidth: 2),
                                  )
                                : Text(l10n.auth_signIn),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String? _resolve(AppLocalizations l10n, String? key) {
    if (key == null) return null;
    return switch (key) {
      'validation_required' => l10n.validation_required,
      'validation_invalidEmail' => l10n.validation_invalidEmail,
      _ => key,
    };
  }
}
