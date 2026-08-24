import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/error/result.dart';
import '../../../../core/localization/l10n_gen/app_localizations.dart';
import '../../../../core/utils/validators.dart';
import '../../../../core/widgets/app_text_field.dart';
import '../../../../core/widgets/error_view.dart';
import '../providers/auth_providers.dart';

class ForgotPasswordScreen extends ConsumerStatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  ConsumerState<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends ConsumerState<ForgotPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  bool _isSubmitting = false;
  String? _message;

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    final AppLocalizations l10n = AppLocalizations.of(context);
    if (!(_formKey.currentState?.validate() ?? false)) return;
    setState(() {
      _isSubmitting = true;
      _message = null;
    });
    final Result<void> result = await ref
        .read(authRepositoryProvider)
        .sendPasswordResetEmail(_emailController.text);
    if (!mounted) return;
    setState(() {
      _isSubmitting = false;
      _message = result.when(
        ok: (_) => l10n.common_success_saved,
        err: (failure) => ErrorView.messageFor(l10n, failure),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(l10n.auth_forgotPassword)),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              AppTextField(
                label: l10n.auth_email,
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                forceLtr: true,
                validator: (v) => Validators.email(v) == null
                    ? null
                    : (Validators.email(v) == 'validation_required'
                          ? l10n.validation_required
                          : l10n.validation_invalidEmail),
              ),
              if (_message != null) ...<Widget>[
                const SizedBox(height: 12),
                Text(_message!, textAlign: TextAlign.center),
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
                    : Text(l10n.common_submit),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
