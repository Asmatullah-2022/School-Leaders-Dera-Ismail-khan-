import '../../../../core/localization/l10n_gen/app_localizations.dart';
import '../../data/models/parent_contact_model.dart';

String contactMethodLabel(AppLocalizations l10n, ContactMethod m) => switch (m) {
  ContactMethod.schoolVisit => l10n.parentContact_method_schoolVisit,
  ContactMethod.homeVisit => l10n.parentContact_method_homeVisit,
  ContactMethod.phoneCall => l10n.parentContact_method_phoneCall,
  ContactMethod.sms => l10n.parentContact_method_sms,
  ContactMethod.whatsapp => l10n.parentContact_method_whatsapp,
  ContactMethod.meeting => l10n.parentContact_method_meeting,
  ContactMethod.other => l10n.parentContact_method_other,
};
