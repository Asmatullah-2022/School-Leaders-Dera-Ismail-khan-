import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_ur.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n_gen/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ur'),
  ];

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'School Leader DI Khan'**
  String get appName;

  /// No description provided for @appNameFull.
  ///
  /// In en, this message translates to:
  /// **'School Leader District Dera Ismail Khan'**
  String get appNameFull;

  /// No description provided for @appSubtitle.
  ///
  /// In en, this message translates to:
  /// **'School Leadership, Monitoring & Management System'**
  String get appSubtitle;

  /// No description provided for @districtLabel.
  ///
  /// In en, this message translates to:
  /// **'District Dera Ismail Khan'**
  String get districtLabel;

  /// No description provided for @common_save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get common_save;

  /// No description provided for @common_cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get common_cancel;

  /// No description provided for @common_submit.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get common_submit;

  /// No description provided for @common_edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get common_edit;

  /// No description provided for @common_delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get common_delete;

  /// No description provided for @common_add.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get common_add;

  /// No description provided for @common_search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get common_search;

  /// No description provided for @common_filter.
  ///
  /// In en, this message translates to:
  /// **'Filter'**
  String get common_filter;

  /// No description provided for @common_close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get common_close;

  /// No description provided for @common_retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get common_retry;

  /// No description provided for @common_ok.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get common_ok;

  /// No description provided for @common_yes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get common_yes;

  /// No description provided for @common_no.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get common_no;

  /// No description provided for @common_continue.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get common_continue;

  /// No description provided for @common_back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get common_back;

  /// No description provided for @common_next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get common_next;

  /// No description provided for @common_done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get common_done;

  /// No description provided for @common_confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get common_confirm;

  /// No description provided for @common_export.
  ///
  /// In en, this message translates to:
  /// **'Export'**
  String get common_export;

  /// No description provided for @common_share.
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get common_share;

  /// No description provided for @common_print.
  ///
  /// In en, this message translates to:
  /// **'Print'**
  String get common_print;

  /// No description provided for @common_viewAll.
  ///
  /// In en, this message translates to:
  /// **'View All'**
  String get common_viewAll;

  /// No description provided for @common_remarks.
  ///
  /// In en, this message translates to:
  /// **'Remarks'**
  String get common_remarks;

  /// No description provided for @common_date.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get common_date;

  /// No description provided for @common_status.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get common_status;

  /// No description provided for @common_photo.
  ///
  /// In en, this message translates to:
  /// **'Photo'**
  String get common_photo;

  /// No description provided for @common_photos.
  ///
  /// In en, this message translates to:
  /// **'Photos'**
  String get common_photos;

  /// No description provided for @common_camera.
  ///
  /// In en, this message translates to:
  /// **'Camera'**
  String get common_camera;

  /// No description provided for @common_gallery.
  ///
  /// In en, this message translates to:
  /// **'Gallery'**
  String get common_gallery;

  /// No description provided for @common_school.
  ///
  /// In en, this message translates to:
  /// **'School'**
  String get common_school;

  /// No description provided for @common_cluster.
  ///
  /// In en, this message translates to:
  /// **'Cluster'**
  String get common_cluster;

  /// No description provided for @common_circle.
  ///
  /// In en, this message translates to:
  /// **'Circle'**
  String get common_circle;

  /// No description provided for @common_subDivision.
  ///
  /// In en, this message translates to:
  /// **'Sub-Division'**
  String get common_subDivision;

  /// No description provided for @common_district.
  ///
  /// In en, this message translates to:
  /// **'District'**
  String get common_district;

  /// No description provided for @common_optional.
  ///
  /// In en, this message translates to:
  /// **'Optional'**
  String get common_optional;

  /// No description provided for @common_required.
  ///
  /// In en, this message translates to:
  /// **'Required'**
  String get common_required;

  /// No description provided for @common_loading.
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get common_loading;

  /// No description provided for @common_comingSoon.
  ///
  /// In en, this message translates to:
  /// **'This module is coming soon'**
  String get common_comingSoon;

  /// No description provided for @common_selectOption.
  ///
  /// In en, this message translates to:
  /// **'Select an option'**
  String get common_selectOption;

  /// No description provided for @common_noInternet.
  ///
  /// In en, this message translates to:
  /// **'No internet connection'**
  String get common_noInternet;

  /// No description provided for @common_logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get common_logout;

  /// No description provided for @common_error_network.
  ///
  /// In en, this message translates to:
  /// **'Internet connection is unavailable. Your data has been saved locally.'**
  String get common_error_network;

  /// No description provided for @common_error_auth.
  ///
  /// In en, this message translates to:
  /// **'Authentication failed. Please sign in again.'**
  String get common_error_auth;

  /// No description provided for @common_error_permission.
  ///
  /// In en, this message translates to:
  /// **'You do not have permission to perform this action.'**
  String get common_error_permission;

  /// No description provided for @common_error_notFound.
  ///
  /// In en, this message translates to:
  /// **'The requested record could not be found.'**
  String get common_error_notFound;

  /// No description provided for @common_error_unknown.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong. Please try again.'**
  String get common_error_unknown;

  /// No description provided for @common_success_saved.
  ///
  /// In en, this message translates to:
  /// **'Saved successfully.'**
  String get common_success_saved;

  /// No description provided for @common_success_submitted.
  ///
  /// In en, this message translates to:
  /// **'Report submitted successfully.'**
  String get common_success_submitted;

  /// No description provided for @common_success_savedOffline.
  ///
  /// In en, this message translates to:
  /// **'Your data has been saved locally. It will sync automatically once internet is available.'**
  String get common_success_savedOffline;

  /// No description provided for @validation_required.
  ///
  /// In en, this message translates to:
  /// **'This field is required'**
  String get validation_required;

  /// No description provided for @validation_nonNegative.
  ///
  /// In en, this message translates to:
  /// **'Value cannot be negative'**
  String get validation_nonNegative;

  /// No description provided for @validation_positive.
  ///
  /// In en, this message translates to:
  /// **'Value must be greater than zero'**
  String get validation_positive;

  /// No description provided for @validation_invalidPhone.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid phone number'**
  String get validation_invalidPhone;

  /// No description provided for @validation_invalidEmail.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid email address'**
  String get validation_invalidEmail;

  /// No description provided for @validation_minLength.
  ///
  /// In en, this message translates to:
  /// **'Value is too short'**
  String get validation_minLength;

  /// No description provided for @validation_invalidAge.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid age'**
  String get validation_invalidAge;

  /// No description provided for @validation_boysGirlsMismatch.
  ///
  /// In en, this message translates to:
  /// **'Boys + Girls must equal Total Students'**
  String get validation_boysGirlsMismatch;

  /// No description provided for @validation_dateInFuture.
  ///
  /// In en, this message translates to:
  /// **'Date cannot be in the future'**
  String get validation_dateInFuture;

  /// No description provided for @validation_endBeforeStart.
  ///
  /// In en, this message translates to:
  /// **'End date must be after start date'**
  String get validation_endBeforeStart;

  /// No description provided for @sync_offline.
  ///
  /// In en, this message translates to:
  /// **'Offline'**
  String get sync_offline;

  /// No description provided for @sync_savedLocally.
  ///
  /// In en, this message translates to:
  /// **'Saved Locally'**
  String get sync_savedLocally;

  /// No description provided for @sync_syncing.
  ///
  /// In en, this message translates to:
  /// **'Syncing'**
  String get sync_syncing;

  /// No description provided for @sync_synced.
  ///
  /// In en, this message translates to:
  /// **'Synced'**
  String get sync_synced;

  /// No description provided for @sync_syncFailed.
  ///
  /// In en, this message translates to:
  /// **'Sync Failed'**
  String get sync_syncFailed;

  /// No description provided for @sync_pendingBanner.
  ///
  /// In en, this message translates to:
  /// **'{count} item(s) waiting to sync'**
  String sync_pendingBanner(int count);

  /// No description provided for @nav_home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get nav_home;

  /// No description provided for @nav_schools.
  ///
  /// In en, this message translates to:
  /// **'Schools'**
  String get nav_schools;

  /// No description provided for @nav_monitoring.
  ///
  /// In en, this message translates to:
  /// **'Monitoring'**
  String get nav_monitoring;

  /// No description provided for @nav_reports.
  ///
  /// In en, this message translates to:
  /// **'Reports'**
  String get nav_reports;

  /// No description provided for @nav_more.
  ///
  /// In en, this message translates to:
  /// **'More'**
  String get nav_more;

  /// No description provided for @more_admission.
  ///
  /// In en, this message translates to:
  /// **'Admission'**
  String get more_admission;

  /// No description provided for @more_clusterMeetings.
  ///
  /// In en, this message translates to:
  /// **'Cluster Meetings'**
  String get more_clusterMeetings;

  /// No description provided for @more_ptc.
  ///
  /// In en, this message translates to:
  /// **'PTC'**
  String get more_ptc;

  /// No description provided for @more_ece.
  ///
  /// In en, this message translates to:
  /// **'ECE'**
  String get more_ece;

  /// No description provided for @more_cleanliness.
  ///
  /// In en, this message translates to:
  /// **'Cleanliness'**
  String get more_cleanliness;

  /// No description provided for @more_plantation.
  ///
  /// In en, this message translates to:
  /// **'Plantation'**
  String get more_plantation;

  /// No description provided for @more_community.
  ///
  /// In en, this message translates to:
  /// **'Community'**
  String get more_community;

  /// No description provided for @more_schoolProblems.
  ///
  /// In en, this message translates to:
  /// **'School Problems'**
  String get more_schoolProblems;

  /// No description provided for @more_emergency.
  ///
  /// In en, this message translates to:
  /// **'Emergency'**
  String get more_emergency;

  /// No description provided for @more_officialUpdates.
  ///
  /// In en, this message translates to:
  /// **'Official Updates'**
  String get more_officialUpdates;

  /// No description provided for @more_notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get more_notifications;

  /// No description provided for @more_profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get more_profile;

  /// No description provided for @more_settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get more_settings;

  /// No description provided for @more_auditLog.
  ///
  /// In en, this message translates to:
  /// **'Audit Log'**
  String get more_auditLog;

  /// No description provided for @more_adminManagement.
  ///
  /// In en, this message translates to:
  /// **'User Management'**
  String get more_adminManagement;

  /// No description provided for @role_superAdmin.
  ///
  /// In en, this message translates to:
  /// **'Super Admin'**
  String get role_superAdmin;

  /// No description provided for @role_districtAdmin.
  ///
  /// In en, this message translates to:
  /// **'District Admin'**
  String get role_districtAdmin;

  /// No description provided for @role_subDivisionAdmin.
  ///
  /// In en, this message translates to:
  /// **'Sub-Division Admin'**
  String get role_subDivisionAdmin;

  /// No description provided for @role_circleAdmin.
  ///
  /// In en, this message translates to:
  /// **'Circle/Cluster Admin'**
  String get role_circleAdmin;

  /// No description provided for @role_schoolLeader.
  ///
  /// In en, this message translates to:
  /// **'School Leader / Head Teacher'**
  String get role_schoolLeader;

  /// No description provided for @role_monitoringOfficer.
  ///
  /// In en, this message translates to:
  /// **'Monitoring Officer'**
  String get role_monitoringOfficer;

  /// No description provided for @setup_welcomeTitle.
  ///
  /// In en, this message translates to:
  /// **'Welcome to School Leader DI Khan'**
  String get setup_welcomeTitle;

  /// No description provided for @setup_selectLanguage.
  ///
  /// In en, this message translates to:
  /// **'Select Language'**
  String get setup_selectLanguage;

  /// No description provided for @setup_selectDisplayMode.
  ///
  /// In en, this message translates to:
  /// **'Select Display Mode'**
  String get setup_selectDisplayMode;

  /// No description provided for @setup_light.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get setup_light;

  /// No description provided for @setup_dark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get setup_dark;

  /// No description provided for @setup_systemDefault.
  ///
  /// In en, this message translates to:
  /// **'System Default'**
  String get setup_systemDefault;

  /// No description provided for @setup_continue.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get setup_continue;

  /// No description provided for @auth_loginTitle.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get auth_loginTitle;

  /// No description provided for @auth_email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get auth_email;

  /// No description provided for @auth_password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get auth_password;

  /// No description provided for @auth_forgotPassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot Password?'**
  String get auth_forgotPassword;

  /// No description provided for @auth_signIn.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get auth_signIn;

  /// No description provided for @auth_signOut.
  ///
  /// In en, this message translates to:
  /// **'Sign Out'**
  String get auth_signOut;

  /// No description provided for @auth_notConfigured.
  ///
  /// In en, this message translates to:
  /// **'Firebase is not configured yet'**
  String get auth_notConfigured;

  /// No description provided for @auth_notConfiguredBody.
  ///
  /// In en, this message translates to:
  /// **'This app has not been connected to a Firebase project. Follow the setup instructions in the project README to enable sign-in and data sync.'**
  String get auth_notConfiguredBody;

  /// No description provided for @settings_language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get settings_language;

  /// No description provided for @settings_displayMode.
  ///
  /// In en, this message translates to:
  /// **'Display Mode'**
  String get settings_displayMode;

  /// No description provided for @settings_notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get settings_notifications;

  /// No description provided for @settings_password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get settings_password;

  /// No description provided for @settings_security.
  ///
  /// In en, this message translates to:
  /// **'Security'**
  String get settings_security;

  /// No description provided for @settings_offlineSync.
  ///
  /// In en, this message translates to:
  /// **'Offline Sync'**
  String get settings_offlineSync;

  /// No description provided for @settings_about.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get settings_about;

  /// No description provided for @settings_privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get settings_privacyPolicy;

  /// No description provided for @settings_terms.
  ///
  /// In en, this message translates to:
  /// **'Terms'**
  String get settings_terms;

  /// No description provided for @settings_support.
  ///
  /// In en, this message translates to:
  /// **'Support'**
  String get settings_support;

  /// No description provided for @settings_title.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings_title;

  /// No description provided for @profile_title.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile_title;

  /// No description provided for @profile_designation.
  ///
  /// In en, this message translates to:
  /// **'Designation'**
  String get profile_designation;

  /// No description provided for @profile_mobile.
  ///
  /// In en, this message translates to:
  /// **'Mobile'**
  String get profile_mobile;

  /// No description provided for @dashboard_totalSchools.
  ///
  /// In en, this message translates to:
  /// **'Total Schools'**
  String get dashboard_totalSchools;

  /// No description provided for @dashboard_totalClusters.
  ///
  /// In en, this message translates to:
  /// **'Total Clusters'**
  String get dashboard_totalClusters;

  /// No description provided for @dashboard_totalEnrollment.
  ///
  /// In en, this message translates to:
  /// **'Total Enrollment'**
  String get dashboard_totalEnrollment;

  /// No description provided for @dashboard_newAdmissions.
  ///
  /// In en, this message translates to:
  /// **'New Admissions'**
  String get dashboard_newAdmissions;

  /// No description provided for @dashboard_oosc.
  ///
  /// In en, this message translates to:
  /// **'OOSC'**
  String get dashboard_oosc;

  /// No description provided for @dashboard_functionalSchools.
  ///
  /// In en, this message translates to:
  /// **'Functional Schools'**
  String get dashboard_functionalSchools;

  /// No description provided for @dashboard_schoolsNeedingAttention.
  ///
  /// In en, this message translates to:
  /// **'Schools Requiring Attention'**
  String get dashboard_schoolsNeedingAttention;

  /// No description provided for @dashboard_pendingReports.
  ///
  /// In en, this message translates to:
  /// **'Pending Reports'**
  String get dashboard_pendingReports;

  /// No description provided for @dashboard_quickActions.
  ///
  /// In en, this message translates to:
  /// **'Quick Actions'**
  String get dashboard_quickActions;

  /// No description provided for @dashboard_qa_admission.
  ///
  /// In en, this message translates to:
  /// **'New Admission'**
  String get dashboard_qa_admission;

  /// No description provided for @dashboard_qa_monitoring.
  ///
  /// In en, this message translates to:
  /// **'Monitoring Report'**
  String get dashboard_qa_monitoring;

  /// No description provided for @dashboard_qa_problem.
  ///
  /// In en, this message translates to:
  /// **'School Problem'**
  String get dashboard_qa_problem;

  /// No description provided for @dashboard_qa_emergency.
  ///
  /// In en, this message translates to:
  /// **'Emergency Report'**
  String get dashboard_qa_emergency;

  /// No description provided for @dashboard_qa_ptc.
  ///
  /// In en, this message translates to:
  /// **'PTC Activity'**
  String get dashboard_qa_ptc;

  /// No description provided for @dashboard_qa_community.
  ///
  /// In en, this message translates to:
  /// **'Community Activity'**
  String get dashboard_qa_community;

  /// No description provided for @dashboard_qa_evidence.
  ///
  /// In en, this message translates to:
  /// **'Upload Evidence'**
  String get dashboard_qa_evidence;

  /// No description provided for @hierarchy_districts.
  ///
  /// In en, this message translates to:
  /// **'Districts'**
  String get hierarchy_districts;

  /// No description provided for @hierarchy_subDivisions.
  ///
  /// In en, this message translates to:
  /// **'Sub-Divisions'**
  String get hierarchy_subDivisions;

  /// No description provided for @hierarchy_circles.
  ///
  /// In en, this message translates to:
  /// **'Circles'**
  String get hierarchy_circles;

  /// No description provided for @hierarchy_clusters.
  ///
  /// In en, this message translates to:
  /// **'Clusters'**
  String get hierarchy_clusters;

  /// No description provided for @hierarchy_schools.
  ///
  /// In en, this message translates to:
  /// **'Schools'**
  String get hierarchy_schools;

  /// No description provided for @hierarchy_addDistrict.
  ///
  /// In en, this message translates to:
  /// **'Add District'**
  String get hierarchy_addDistrict;

  /// No description provided for @hierarchy_addSubDivision.
  ///
  /// In en, this message translates to:
  /// **'Add Sub-Division'**
  String get hierarchy_addSubDivision;

  /// No description provided for @hierarchy_addCircle.
  ///
  /// In en, this message translates to:
  /// **'Add Circle'**
  String get hierarchy_addCircle;

  /// No description provided for @hierarchy_addCluster.
  ///
  /// In en, this message translates to:
  /// **'Add Cluster'**
  String get hierarchy_addCluster;

  /// No description provided for @hierarchy_addSchool.
  ///
  /// In en, this message translates to:
  /// **'Add School'**
  String get hierarchy_addSchool;

  /// No description provided for @hierarchy_name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get hierarchy_name;

  /// No description provided for @hierarchy_nameUrdu.
  ///
  /// In en, this message translates to:
  /// **'Name (Urdu)'**
  String get hierarchy_nameUrdu;

  /// No description provided for @hierarchy_code.
  ///
  /// In en, this message translates to:
  /// **'Code'**
  String get hierarchy_code;

  /// No description provided for @hierarchy_active.
  ///
  /// In en, this message translates to:
  /// **'Active'**
  String get hierarchy_active;

  /// No description provided for @hierarchy_inactive.
  ///
  /// In en, this message translates to:
  /// **'Inactive'**
  String get hierarchy_inactive;

  /// No description provided for @hierarchy_selectDistrict.
  ///
  /// In en, this message translates to:
  /// **'Select District'**
  String get hierarchy_selectDistrict;

  /// No description provided for @hierarchy_selectSubDivision.
  ///
  /// In en, this message translates to:
  /// **'Select Sub-Division'**
  String get hierarchy_selectSubDivision;

  /// No description provided for @hierarchy_selectCircle.
  ///
  /// In en, this message translates to:
  /// **'Select Circle'**
  String get hierarchy_selectCircle;

  /// No description provided for @hierarchy_selectCluster.
  ///
  /// In en, this message translates to:
  /// **'Select Cluster'**
  String get hierarchy_selectCluster;

  /// No description provided for @hierarchy_selectSchool.
  ///
  /// In en, this message translates to:
  /// **'Select School'**
  String get hierarchy_selectSchool;

  /// No description provided for @hierarchy_emisCode.
  ///
  /// In en, this message translates to:
  /// **'EMIS Code'**
  String get hierarchy_emisCode;

  /// No description provided for @hierarchy_schoolLevel.
  ///
  /// In en, this message translates to:
  /// **'School Level'**
  String get hierarchy_schoolLevel;

  /// No description provided for @hierarchy_schoolType.
  ///
  /// In en, this message translates to:
  /// **'School Type'**
  String get hierarchy_schoolType;

  /// No description provided for @hierarchy_headTeacher.
  ///
  /// In en, this message translates to:
  /// **'Head Teacher'**
  String get hierarchy_headTeacher;

  /// No description provided for @hierarchy_totalEnrollment.
  ///
  /// In en, this message translates to:
  /// **'Total Enrollment'**
  String get hierarchy_totalEnrollment;

  /// No description provided for @hierarchy_noSchools.
  ///
  /// In en, this message translates to:
  /// **'No schools found in this scope'**
  String get hierarchy_noSchools;

  /// No description provided for @hierarchy_noClusters.
  ///
  /// In en, this message translates to:
  /// **'No clusters found'**
  String get hierarchy_noClusters;

  /// No description provided for @hierarchy_deactivateConfirm.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to deactivate this record?'**
  String get hierarchy_deactivateConfirm;

  /// No description provided for @hierarchy_village.
  ///
  /// In en, this message translates to:
  /// **'Village/Locality'**
  String get hierarchy_village;

  /// No description provided for @hierarchy_teachers.
  ///
  /// In en, this message translates to:
  /// **'Teachers'**
  String get hierarchy_teachers;

  /// No description provided for @hierarchy_boys.
  ///
  /// In en, this message translates to:
  /// **'Boys'**
  String get hierarchy_boys;

  /// No description provided for @hierarchy_girls.
  ///
  /// In en, this message translates to:
  /// **'Girls'**
  String get hierarchy_girls;

  /// No description provided for @hierarchy_classrooms.
  ///
  /// In en, this message translates to:
  /// **'Classrooms'**
  String get hierarchy_classrooms;

  /// No description provided for @hierarchy_toilets.
  ///
  /// In en, this message translates to:
  /// **'Toilets'**
  String get hierarchy_toilets;

  /// No description provided for @hierarchy_facilities.
  ///
  /// In en, this message translates to:
  /// **'Facilities'**
  String get hierarchy_facilities;

  /// No description provided for @hierarchy_drinkingWater.
  ///
  /// In en, this message translates to:
  /// **'Drinking Water'**
  String get hierarchy_drinkingWater;

  /// No description provided for @hierarchy_electricity.
  ///
  /// In en, this message translates to:
  /// **'Electricity'**
  String get hierarchy_electricity;

  /// No description provided for @hierarchy_boundaryWall.
  ///
  /// In en, this message translates to:
  /// **'Boundary Wall'**
  String get hierarchy_boundaryWall;

  /// No description provided for @hierarchy_eceRoom.
  ///
  /// In en, this message translates to:
  /// **'ECE Room'**
  String get hierarchy_eceRoom;

  /// No description provided for @hierarchy_playground.
  ///
  /// In en, this message translates to:
  /// **'Playground'**
  String get hierarchy_playground;

  /// No description provided for @hierarchy_furniture.
  ///
  /// In en, this message translates to:
  /// **'Furniture'**
  String get hierarchy_furniture;

  /// No description provided for @hierarchy_library.
  ///
  /// In en, this message translates to:
  /// **'Library'**
  String get hierarchy_library;

  /// No description provided for @hierarchy_itFacilities.
  ///
  /// In en, this message translates to:
  /// **'IT Facilities'**
  String get hierarchy_itFacilities;

  /// No description provided for @hierarchy_buildingCondition.
  ///
  /// In en, this message translates to:
  /// **'Building Condition'**
  String get hierarchy_buildingCondition;

  /// No description provided for @hierarchy_location.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get hierarchy_location;

  /// No description provided for @hierarchy_latitude.
  ///
  /// In en, this message translates to:
  /// **'Latitude'**
  String get hierarchy_latitude;

  /// No description provided for @hierarchy_longitude.
  ///
  /// In en, this message translates to:
  /// **'Longitude'**
  String get hierarchy_longitude;

  /// No description provided for @school_level_primary.
  ///
  /// In en, this message translates to:
  /// **'Primary'**
  String get school_level_primary;

  /// No description provided for @school_level_elementary.
  ///
  /// In en, this message translates to:
  /// **'Elementary'**
  String get school_level_elementary;

  /// No description provided for @school_level_middle.
  ///
  /// In en, this message translates to:
  /// **'Middle'**
  String get school_level_middle;

  /// No description provided for @school_level_high.
  ///
  /// In en, this message translates to:
  /// **'High'**
  String get school_level_high;

  /// No description provided for @school_level_higherSecondary.
  ///
  /// In en, this message translates to:
  /// **'Higher Secondary'**
  String get school_level_higherSecondary;

  /// No description provided for @school_gender_boys.
  ///
  /// In en, this message translates to:
  /// **'Boys'**
  String get school_gender_boys;

  /// No description provided for @school_gender_girls.
  ///
  /// In en, this message translates to:
  /// **'Girls'**
  String get school_gender_girls;

  /// No description provided for @school_gender_mixed.
  ///
  /// In en, this message translates to:
  /// **'Mixed'**
  String get school_gender_mixed;

  /// No description provided for @building_condition_good.
  ///
  /// In en, this message translates to:
  /// **'Good'**
  String get building_condition_good;

  /// No description provided for @building_condition_needsRepair.
  ///
  /// In en, this message translates to:
  /// **'Needs Repair'**
  String get building_condition_needsRepair;

  /// No description provided for @building_condition_critical.
  ///
  /// In en, this message translates to:
  /// **'Critical'**
  String get building_condition_critical;

  /// No description provided for @admission_target.
  ///
  /// In en, this message translates to:
  /// **'Target'**
  String get admission_target;

  /// No description provided for @admission_achieved.
  ///
  /// In en, this message translates to:
  /// **'Achieved'**
  String get admission_achieved;

  /// No description provided for @admission_academicYear.
  ///
  /// In en, this message translates to:
  /// **'Academic Year'**
  String get admission_academicYear;

  /// No description provided for @admission_previousEnrollment.
  ///
  /// In en, this message translates to:
  /// **'Previous Enrollment'**
  String get admission_previousEnrollment;

  /// No description provided for @admission_currentEnrollment.
  ///
  /// In en, this message translates to:
  /// **'Current Enrollment'**
  String get admission_currentEnrollment;

  /// No description provided for @admission_newAdmissionsBoys.
  ///
  /// In en, this message translates to:
  /// **'New Admissions — Boys'**
  String get admission_newAdmissionsBoys;

  /// No description provided for @admission_newAdmissionsGirls.
  ///
  /// In en, this message translates to:
  /// **'New Admissions — Girls'**
  String get admission_newAdmissionsGirls;

  /// No description provided for @admission_newAdmissionsTotal.
  ///
  /// In en, this message translates to:
  /// **'New Admissions — Total'**
  String get admission_newAdmissionsTotal;

  /// No description provided for @admission_ooscIdentified.
  ///
  /// In en, this message translates to:
  /// **'OOSC Identified'**
  String get admission_ooscIdentified;

  /// No description provided for @admission_ooscReenrolled.
  ///
  /// In en, this message translates to:
  /// **'OOSC Re-enrolled'**
  String get admission_ooscReenrolled;

  /// No description provided for @admission_doorToDoorVisits.
  ///
  /// In en, this message translates to:
  /// **'Door-to-door Visits'**
  String get admission_doorToDoorVisits;

  /// No description provided for @admission_parentMeetings.
  ///
  /// In en, this message translates to:
  /// **'Parent Meetings'**
  String get admission_parentMeetings;

  /// No description provided for @admission_communityMeetings.
  ///
  /// In en, this message translates to:
  /// **'Community Meetings'**
  String get admission_communityMeetings;

  /// No description provided for @admission_banners.
  ///
  /// In en, this message translates to:
  /// **'Banners'**
  String get admission_banners;

  /// No description provided for @admission_posters.
  ///
  /// In en, this message translates to:
  /// **'Posters'**
  String get admission_posters;

  /// No description provided for @admission_socialMediaActivities.
  ///
  /// In en, this message translates to:
  /// **'Social Media Activities'**
  String get admission_socialMediaActivities;

  /// No description provided for @admission_freeTextbooksDistributed.
  ///
  /// In en, this message translates to:
  /// **'Free Textbooks Distributed'**
  String get admission_freeTextbooksDistributed;

  /// No description provided for @admission_otherSupport.
  ///
  /// In en, this message translates to:
  /// **'Other Support'**
  String get admission_otherSupport;

  /// No description provided for @admission_status.
  ///
  /// In en, this message translates to:
  /// **'Campaign Status'**
  String get admission_status;

  /// No description provided for @admission_status_planned.
  ///
  /// In en, this message translates to:
  /// **'Planned'**
  String get admission_status_planned;

  /// No description provided for @admission_status_active.
  ///
  /// In en, this message translates to:
  /// **'Active'**
  String get admission_status_active;

  /// No description provided for @admission_status_completed.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get admission_status_completed;

  /// No description provided for @admission_noCampaigns.
  ///
  /// In en, this message translates to:
  /// **'No admission campaigns recorded yet'**
  String get admission_noCampaigns;

  /// No description provided for @admission_addCampaign.
  ///
  /// In en, this message translates to:
  /// **'New Admission Campaign'**
  String get admission_addCampaign;

  /// No description provided for @admission_linkedOosc.
  ///
  /// In en, this message translates to:
  /// **'OOSC linked to this campaign'**
  String get admission_linkedOosc;

  /// No description provided for @oosc_childName.
  ///
  /// In en, this message translates to:
  /// **'Child Name'**
  String get oosc_childName;

  /// No description provided for @oosc_childNameUrdu.
  ///
  /// In en, this message translates to:
  /// **'Child Name (Urdu)'**
  String get oosc_childNameUrdu;

  /// No description provided for @oosc_gender.
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get oosc_gender;

  /// No description provided for @oosc_age.
  ///
  /// In en, this message translates to:
  /// **'Age'**
  String get oosc_age;

  /// No description provided for @oosc_village.
  ///
  /// In en, this message translates to:
  /// **'Village/Area'**
  String get oosc_village;

  /// No description provided for @oosc_parentGuardian.
  ///
  /// In en, this message translates to:
  /// **'Parent/Guardian'**
  String get oosc_parentGuardian;

  /// No description provided for @oosc_contact.
  ///
  /// In en, this message translates to:
  /// **'Contact'**
  String get oosc_contact;

  /// No description provided for @oosc_reason.
  ///
  /// In en, this message translates to:
  /// **'Reason for being out of school'**
  String get oosc_reason;

  /// No description provided for @oosc_reasonDetail.
  ///
  /// In en, this message translates to:
  /// **'Reason Detail'**
  String get oosc_reasonDetail;

  /// No description provided for @oosc_previousSchool.
  ///
  /// In en, this message translates to:
  /// **'Previous School'**
  String get oosc_previousSchool;

  /// No description provided for @oosc_status.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get oosc_status;

  /// No description provided for @oosc_followUpDate.
  ///
  /// In en, this message translates to:
  /// **'Follow-up Date'**
  String get oosc_followUpDate;

  /// No description provided for @oosc_noRecords.
  ///
  /// In en, this message translates to:
  /// **'No out-of-school children recorded yet'**
  String get oosc_noRecords;

  /// No description provided for @oosc_addRecord.
  ///
  /// In en, this message translates to:
  /// **'New OOSC Record'**
  String get oosc_addRecord;

  /// No description provided for @oosc_male.
  ///
  /// In en, this message translates to:
  /// **'Male'**
  String get oosc_male;

  /// No description provided for @oosc_female.
  ///
  /// In en, this message translates to:
  /// **'Female'**
  String get oosc_female;

  /// No description provided for @oosc_status_identified.
  ///
  /// In en, this message translates to:
  /// **'Identified'**
  String get oosc_status_identified;

  /// No description provided for @oosc_status_contacted.
  ///
  /// In en, this message translates to:
  /// **'Contacted'**
  String get oosc_status_contacted;

  /// No description provided for @oosc_status_counseled.
  ///
  /// In en, this message translates to:
  /// **'Counseled'**
  String get oosc_status_counseled;

  /// No description provided for @oosc_status_reenrolled.
  ///
  /// In en, this message translates to:
  /// **'Re-enrolled'**
  String get oosc_status_reenrolled;

  /// No description provided for @oosc_status_notReenrolled.
  ///
  /// In en, this message translates to:
  /// **'Not Re-enrolled'**
  String get oosc_status_notReenrolled;

  /// No description provided for @oosc_status_followUpRequired.
  ///
  /// In en, this message translates to:
  /// **'Follow-up Required'**
  String get oosc_status_followUpRequired;

  /// No description provided for @oosc_reason_labor.
  ///
  /// In en, this message translates to:
  /// **'Child Labor'**
  String get oosc_reason_labor;

  /// No description provided for @oosc_reason_migration.
  ///
  /// In en, this message translates to:
  /// **'Migration'**
  String get oosc_reason_migration;

  /// No description provided for @oosc_reason_disability.
  ///
  /// In en, this message translates to:
  /// **'Disability'**
  String get oosc_reason_disability;

  /// No description provided for @oosc_reason_financial.
  ///
  /// In en, this message translates to:
  /// **'Financial Hardship'**
  String get oosc_reason_financial;

  /// No description provided for @oosc_reason_distance.
  ///
  /// In en, this message translates to:
  /// **'Distance from School'**
  String get oosc_reason_distance;

  /// No description provided for @oosc_reason_earlyMarriage.
  ///
  /// In en, this message translates to:
  /// **'Early Marriage'**
  String get oosc_reason_earlyMarriage;

  /// No description provided for @oosc_reason_other.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get oosc_reason_other;

  /// No description provided for @monitoring_grade_excellent.
  ///
  /// In en, this message translates to:
  /// **'Excellent'**
  String get monitoring_grade_excellent;

  /// No description provided for @monitoring_grade_veryGood.
  ///
  /// In en, this message translates to:
  /// **'Very Good'**
  String get monitoring_grade_veryGood;

  /// No description provided for @monitoring_grade_good.
  ///
  /// In en, this message translates to:
  /// **'Good'**
  String get monitoring_grade_good;

  /// No description provided for @monitoring_grade_needsImprovement.
  ///
  /// In en, this message translates to:
  /// **'Needs Improvement'**
  String get monitoring_grade_needsImprovement;

  /// No description provided for @monitoring_grade_critical.
  ///
  /// In en, this message translates to:
  /// **'Critical'**
  String get monitoring_grade_critical;

  /// No description provided for @monitoring_visitDate.
  ///
  /// In en, this message translates to:
  /// **'Visit Date'**
  String get monitoring_visitDate;

  /// No description provided for @monitoring_status_draft.
  ///
  /// In en, this message translates to:
  /// **'Draft'**
  String get monitoring_status_draft;

  /// No description provided for @monitoring_status_submitted.
  ///
  /// In en, this message translates to:
  /// **'Submitted'**
  String get monitoring_status_submitted;

  /// No description provided for @monitoring_noReports.
  ///
  /// In en, this message translates to:
  /// **'No monitoring reports recorded yet'**
  String get monitoring_noReports;

  /// No description provided for @monitoring_addReport.
  ///
  /// In en, this message translates to:
  /// **'New Monitoring Report'**
  String get monitoring_addReport;

  /// No description provided for @monitoring_scoringConfig.
  ///
  /// In en, this message translates to:
  /// **'Monitoring Score Weights'**
  String get monitoring_scoringConfig;

  /// No description provided for @monitoring_criteria.
  ///
  /// In en, this message translates to:
  /// **'Scoring Criteria'**
  String get monitoring_criteria;

  /// No description provided for @monitoring_weight.
  ///
  /// In en, this message translates to:
  /// **'Weight'**
  String get monitoring_weight;

  /// No description provided for @monitoring_maxScore.
  ///
  /// In en, this message translates to:
  /// **'Max Score'**
  String get monitoring_maxScore;

  /// No description provided for @monitoring_saveConfig.
  ///
  /// In en, this message translates to:
  /// **'Save Weights'**
  String get monitoring_saveConfig;

  /// No description provided for @monitoring_configSaved.
  ///
  /// In en, this message translates to:
  /// **'Scoring weights updated'**
  String get monitoring_configSaved;

  /// No description provided for @monitoring_overallScore.
  ///
  /// In en, this message translates to:
  /// **'Overall Score'**
  String get monitoring_overallScore;

  /// No description provided for @priority_low.
  ///
  /// In en, this message translates to:
  /// **'Low'**
  String get priority_low;

  /// No description provided for @priority_medium.
  ///
  /// In en, this message translates to:
  /// **'Medium'**
  String get priority_medium;

  /// No description provided for @priority_high.
  ///
  /// In en, this message translates to:
  /// **'High'**
  String get priority_high;

  /// No description provided for @priority_critical.
  ///
  /// In en, this message translates to:
  /// **'Critical'**
  String get priority_critical;

  /// No description provided for @problem_status_open.
  ///
  /// In en, this message translates to:
  /// **'Open'**
  String get problem_status_open;

  /// No description provided for @problem_status_inProgress.
  ///
  /// In en, this message translates to:
  /// **'In Progress'**
  String get problem_status_inProgress;

  /// No description provided for @problem_status_resolved.
  ///
  /// In en, this message translates to:
  /// **'Resolved'**
  String get problem_status_resolved;

  /// No description provided for @problem_status_closed.
  ///
  /// In en, this message translates to:
  /// **'Closed'**
  String get problem_status_closed;

  /// No description provided for @problem_title.
  ///
  /// In en, this message translates to:
  /// **'Problem Title'**
  String get problem_title;

  /// No description provided for @problem_titleUrdu.
  ///
  /// In en, this message translates to:
  /// **'Problem Title (Urdu)'**
  String get problem_titleUrdu;

  /// No description provided for @problem_category.
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get problem_category;

  /// No description provided for @problem_description.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get problem_description;

  /// No description provided for @problem_descriptionUrdu.
  ///
  /// In en, this message translates to:
  /// **'Description (Urdu)'**
  String get problem_descriptionUrdu;

  /// No description provided for @problem_priority.
  ///
  /// In en, this message translates to:
  /// **'Priority'**
  String get problem_priority;

  /// No description provided for @problem_dateReported.
  ///
  /// In en, this message translates to:
  /// **'Date Reported'**
  String get problem_dateReported;

  /// No description provided for @problem_requiredSupport.
  ///
  /// In en, this message translates to:
  /// **'Required Support'**
  String get problem_requiredSupport;

  /// No description provided for @problem_assignedTo.
  ///
  /// In en, this message translates to:
  /// **'Assigned Person'**
  String get problem_assignedTo;

  /// No description provided for @problem_expectedResolution.
  ///
  /// In en, this message translates to:
  /// **'Expected Resolution Date'**
  String get problem_expectedResolution;

  /// No description provided for @problem_resolutionNotes.
  ///
  /// In en, this message translates to:
  /// **'Resolution Notes'**
  String get problem_resolutionNotes;

  /// No description provided for @problem_resolutionEvidence.
  ///
  /// In en, this message translates to:
  /// **'Resolution Evidence'**
  String get problem_resolutionEvidence;

  /// No description provided for @problem_reportedBy.
  ///
  /// In en, this message translates to:
  /// **'Reported By'**
  String get problem_reportedBy;

  /// No description provided for @problem_noProblems.
  ///
  /// In en, this message translates to:
  /// **'No school problems reported yet'**
  String get problem_noProblems;

  /// No description provided for @problem_addProblem.
  ///
  /// In en, this message translates to:
  /// **'Report a School Problem'**
  String get problem_addProblem;

  /// No description provided for @problem_updateStatus.
  ///
  /// In en, this message translates to:
  /// **'Update Status'**
  String get problem_updateStatus;

  /// No description provided for @problem_statusRestricted.
  ///
  /// In en, this message translates to:
  /// **'Only monitoring officers and admins can change the status of a reported problem.'**
  String get problem_statusRestricted;

  /// No description provided for @problem_summaryOpen.
  ///
  /// In en, this message translates to:
  /// **'Open'**
  String get problem_summaryOpen;

  /// No description provided for @problem_summaryInProgress.
  ///
  /// In en, this message translates to:
  /// **'In Progress'**
  String get problem_summaryInProgress;

  /// No description provided for @problem_summaryResolved.
  ///
  /// In en, this message translates to:
  /// **'Resolved'**
  String get problem_summaryResolved;

  /// No description provided for @problem_summaryCritical.
  ///
  /// In en, this message translates to:
  /// **'Critical'**
  String get problem_summaryCritical;

  /// No description provided for @problem_category_infrastructure.
  ///
  /// In en, this message translates to:
  /// **'Infrastructure'**
  String get problem_category_infrastructure;

  /// No description provided for @problem_category_furniture.
  ///
  /// In en, this message translates to:
  /// **'Furniture'**
  String get problem_category_furniture;

  /// No description provided for @problem_category_water.
  ///
  /// In en, this message translates to:
  /// **'Water'**
  String get problem_category_water;

  /// No description provided for @problem_category_toilets.
  ///
  /// In en, this message translates to:
  /// **'Toilets'**
  String get problem_category_toilets;

  /// No description provided for @problem_category_boundaryWall.
  ///
  /// In en, this message translates to:
  /// **'Boundary Wall'**
  String get problem_category_boundaryWall;

  /// No description provided for @problem_category_electricity.
  ///
  /// In en, this message translates to:
  /// **'Electricity'**
  String get problem_category_electricity;

  /// No description provided for @problem_category_classroom.
  ///
  /// In en, this message translates to:
  /// **'Classroom'**
  String get problem_category_classroom;

  /// No description provided for @problem_category_ece.
  ///
  /// In en, this message translates to:
  /// **'ECE'**
  String get problem_category_ece;

  /// No description provided for @problem_category_cleanliness.
  ///
  /// In en, this message translates to:
  /// **'Cleanliness'**
  String get problem_category_cleanliness;

  /// No description provided for @problem_category_staffing.
  ///
  /// In en, this message translates to:
  /// **'Staffing'**
  String get problem_category_staffing;

  /// No description provided for @problem_category_safety.
  ///
  /// In en, this message translates to:
  /// **'Safety'**
  String get problem_category_safety;

  /// No description provided for @problem_category_academic.
  ///
  /// In en, this message translates to:
  /// **'Academic'**
  String get problem_category_academic;

  /// No description provided for @problem_category_other.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get problem_category_other;

  /// No description provided for @emergency_type.
  ///
  /// In en, this message translates to:
  /// **'Emergency Type'**
  String get emergency_type;

  /// No description provided for @emergency_severity.
  ///
  /// In en, this message translates to:
  /// **'Severity'**
  String get emergency_severity;

  /// No description provided for @emergency_description.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get emergency_description;

  /// No description provided for @emergency_descriptionUrdu.
  ///
  /// In en, this message translates to:
  /// **'Description (Urdu)'**
  String get emergency_descriptionUrdu;

  /// No description provided for @emergency_occurredAt.
  ///
  /// In en, this message translates to:
  /// **'Date & Time'**
  String get emergency_occurredAt;

  /// No description provided for @emergency_immediateAction.
  ///
  /// In en, this message translates to:
  /// **'Immediate Action Taken'**
  String get emergency_immediateAction;

  /// No description provided for @emergency_requiredSupport.
  ///
  /// In en, this message translates to:
  /// **'Required Support'**
  String get emergency_requiredSupport;

  /// No description provided for @emergency_contactPerson.
  ///
  /// In en, this message translates to:
  /// **'Contact Person'**
  String get emergency_contactPerson;

  /// No description provided for @emergency_contactPhone.
  ///
  /// In en, this message translates to:
  /// **'Contact Number'**
  String get emergency_contactPhone;

  /// No description provided for @emergency_casualties.
  ///
  /// In en, this message translates to:
  /// **'Casualties (if any)'**
  String get emergency_casualties;

  /// No description provided for @emergency_noReports.
  ///
  /// In en, this message translates to:
  /// **'No emergencies reported'**
  String get emergency_noReports;

  /// No description provided for @emergency_addReport.
  ///
  /// In en, this message translates to:
  /// **'Report an Emergency'**
  String get emergency_addReport;

  /// No description provided for @emergency_quickReport.
  ///
  /// In en, this message translates to:
  /// **'Quick Emergency Report'**
  String get emergency_quickReport;

  /// No description provided for @emergency_activeCritical.
  ///
  /// In en, this message translates to:
  /// **'Active critical emergencies'**
  String get emergency_activeCritical;

  /// No description provided for @emergency_reportedBy.
  ///
  /// In en, this message translates to:
  /// **'Reported By'**
  String get emergency_reportedBy;

  /// No description provided for @emergency_updateStatus.
  ///
  /// In en, this message translates to:
  /// **'Update Status'**
  String get emergency_updateStatus;

  /// No description provided for @emergency_resolutionNotes.
  ///
  /// In en, this message translates to:
  /// **'Resolution Notes'**
  String get emergency_resolutionNotes;

  /// No description provided for @emergency_status_open.
  ///
  /// In en, this message translates to:
  /// **'Open'**
  String get emergency_status_open;

  /// No description provided for @emergency_status_responding.
  ///
  /// In en, this message translates to:
  /// **'Responding'**
  String get emergency_status_responding;

  /// No description provided for @emergency_status_resolved.
  ///
  /// In en, this message translates to:
  /// **'Resolved'**
  String get emergency_status_resolved;

  /// No description provided for @emergency_type_fire.
  ///
  /// In en, this message translates to:
  /// **'Fire'**
  String get emergency_type_fire;

  /// No description provided for @emergency_type_flood.
  ///
  /// In en, this message translates to:
  /// **'Flood'**
  String get emergency_type_flood;

  /// No description provided for @emergency_type_buildingDamage.
  ///
  /// In en, this message translates to:
  /// **'Building Damage'**
  String get emergency_type_buildingDamage;

  /// No description provided for @emergency_type_security.
  ///
  /// In en, this message translates to:
  /// **'Security'**
  String get emergency_type_security;

  /// No description provided for @emergency_type_naturalDisaster.
  ///
  /// In en, this message translates to:
  /// **'Natural Disaster'**
  String get emergency_type_naturalDisaster;

  /// No description provided for @emergency_type_health.
  ///
  /// In en, this message translates to:
  /// **'Health Emergency'**
  String get emergency_type_health;

  /// No description provided for @emergency_type_electricalHazard.
  ///
  /// In en, this message translates to:
  /// **'Electrical Hazard'**
  String get emergency_type_electricalHazard;

  /// No description provided for @emergency_type_waterProblem.
  ///
  /// In en, this message translates to:
  /// **'Water Problem'**
  String get emergency_type_waterProblem;

  /// No description provided for @emergency_type_boundaryWall.
  ///
  /// In en, this message translates to:
  /// **'Boundary Wall'**
  String get emergency_type_boundaryWall;

  /// No description provided for @emergency_type_other.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get emergency_type_other;

  /// No description provided for @ptc_meetingDate.
  ///
  /// In en, this message translates to:
  /// **'Meeting Date'**
  String get ptc_meetingDate;

  /// No description provided for @ptc_priorityTitle.
  ///
  /// In en, this message translates to:
  /// **'Priority'**
  String get ptc_priorityTitle;

  /// No description provided for @ptc_priorityTitleUrdu.
  ///
  /// In en, this message translates to:
  /// **'Priority (Urdu)'**
  String get ptc_priorityTitleUrdu;

  /// No description provided for @ptc_category.
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get ptc_category;

  /// No description provided for @ptc_priorityLevel.
  ///
  /// In en, this message translates to:
  /// **'Priority Level'**
  String get ptc_priorityLevel;

  /// No description provided for @ptc_estimatedCost.
  ///
  /// In en, this message translates to:
  /// **'Estimated Cost'**
  String get ptc_estimatedCost;

  /// No description provided for @ptc_availableFunds.
  ///
  /// In en, this message translates to:
  /// **'Available Funds'**
  String get ptc_availableFunds;

  /// No description provided for @ptc_requiredFunds.
  ///
  /// In en, this message translates to:
  /// **'Required Funds'**
  String get ptc_requiredFunds;

  /// No description provided for @ptc_proposedAction.
  ///
  /// In en, this message translates to:
  /// **'Proposed Action'**
  String get ptc_proposedAction;

  /// No description provided for @ptc_decision.
  ///
  /// In en, this message translates to:
  /// **'Decision'**
  String get ptc_decision;

  /// No description provided for @ptc_responsiblePerson.
  ///
  /// In en, this message translates to:
  /// **'Responsible Person'**
  String get ptc_responsiblePerson;

  /// No description provided for @ptc_targetDate.
  ///
  /// In en, this message translates to:
  /// **'Target Date'**
  String get ptc_targetDate;

  /// No description provided for @ptc_rank.
  ///
  /// In en, this message translates to:
  /// **'Rank'**
  String get ptc_rank;

  /// No description provided for @ptc_noPriorities.
  ///
  /// In en, this message translates to:
  /// **'No PTC priorities recorded yet'**
  String get ptc_noPriorities;

  /// No description provided for @ptc_addPriority.
  ///
  /// In en, this message translates to:
  /// **'New PTC Priority'**
  String get ptc_addPriority;

  /// No description provided for @ptc_reorderHint.
  ///
  /// In en, this message translates to:
  /// **'Press and hold to drag a priority into order'**
  String get ptc_reorderHint;

  /// No description provided for @ptc_status_proposed.
  ///
  /// In en, this message translates to:
  /// **'Proposed'**
  String get ptc_status_proposed;

  /// No description provided for @ptc_status_approved.
  ///
  /// In en, this message translates to:
  /// **'Approved'**
  String get ptc_status_approved;

  /// No description provided for @ptc_status_inProgress.
  ///
  /// In en, this message translates to:
  /// **'In Progress'**
  String get ptc_status_inProgress;

  /// No description provided for @ptc_status_completed.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get ptc_status_completed;

  /// No description provided for @ptc_category_furniture.
  ///
  /// In en, this message translates to:
  /// **'Furniture'**
  String get ptc_category_furniture;

  /// No description provided for @ptc_category_buildingRepair.
  ///
  /// In en, this message translates to:
  /// **'Building Repair'**
  String get ptc_category_buildingRepair;

  /// No description provided for @ptc_category_water.
  ///
  /// In en, this message translates to:
  /// **'Water'**
  String get ptc_category_water;

  /// No description provided for @ptc_category_toilets.
  ///
  /// In en, this message translates to:
  /// **'Toilets'**
  String get ptc_category_toilets;

  /// No description provided for @ptc_category_boundaryWall.
  ///
  /// In en, this message translates to:
  /// **'Boundary Wall'**
  String get ptc_category_boundaryWall;

  /// No description provided for @ptc_category_electricity.
  ///
  /// In en, this message translates to:
  /// **'Electricity'**
  String get ptc_category_electricity;

  /// No description provided for @ptc_category_classroom.
  ///
  /// In en, this message translates to:
  /// **'Classroom'**
  String get ptc_category_classroom;

  /// No description provided for @ptc_category_ece.
  ///
  /// In en, this message translates to:
  /// **'ECE'**
  String get ptc_category_ece;

  /// No description provided for @ptc_category_cleanliness.
  ///
  /// In en, this message translates to:
  /// **'Cleanliness'**
  String get ptc_category_cleanliness;

  /// No description provided for @ptc_category_plantation.
  ///
  /// In en, this message translates to:
  /// **'Plantation'**
  String get ptc_category_plantation;

  /// No description provided for @ptc_category_learningMaterials.
  ///
  /// In en, this message translates to:
  /// **'Learning Materials'**
  String get ptc_category_learningMaterials;

  /// No description provided for @ptc_category_other.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get ptc_category_other;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'ur'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'ur':
      return AppLocalizationsUr();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
