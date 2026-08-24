// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'School Leader DI Khan';

  @override
  String get appNameFull => 'School Leader District Dera Ismail Khan';

  @override
  String get appSubtitle => 'School Leadership, Monitoring & Management System';

  @override
  String get districtLabel => 'District Dera Ismail Khan';

  @override
  String get common_save => 'Save';

  @override
  String get common_cancel => 'Cancel';

  @override
  String get common_submit => 'Submit';

  @override
  String get common_edit => 'Edit';

  @override
  String get common_delete => 'Delete';

  @override
  String get common_add => 'Add';

  @override
  String get common_search => 'Search';

  @override
  String get common_filter => 'Filter';

  @override
  String get common_close => 'Close';

  @override
  String get common_retry => 'Retry';

  @override
  String get common_ok => 'OK';

  @override
  String get common_yes => 'Yes';

  @override
  String get common_no => 'No';

  @override
  String get common_continue => 'Continue';

  @override
  String get common_back => 'Back';

  @override
  String get common_next => 'Next';

  @override
  String get common_done => 'Done';

  @override
  String get common_confirm => 'Confirm';

  @override
  String get common_export => 'Export';

  @override
  String get common_share => 'Share';

  @override
  String get common_print => 'Print';

  @override
  String get common_viewAll => 'View All';

  @override
  String get common_remarks => 'Remarks';

  @override
  String get common_date => 'Date';

  @override
  String get common_status => 'Status';

  @override
  String get common_photo => 'Photo';

  @override
  String get common_photos => 'Photos';

  @override
  String get common_camera => 'Camera';

  @override
  String get common_gallery => 'Gallery';

  @override
  String get common_school => 'School';

  @override
  String get common_cluster => 'Cluster';

  @override
  String get common_circle => 'Circle';

  @override
  String get common_subDivision => 'Sub-Division';

  @override
  String get common_district => 'District';

  @override
  String get common_optional => 'Optional';

  @override
  String get common_required => 'Required';

  @override
  String get common_loading => 'Loading...';

  @override
  String get common_comingSoon => 'This module is coming soon';

  @override
  String get common_selectOption => 'Select an option';

  @override
  String get common_noInternet => 'No internet connection';

  @override
  String get common_logout => 'Logout';

  @override
  String get common_error_network =>
      'Internet connection is unavailable. Your data has been saved locally.';

  @override
  String get common_error_auth =>
      'Authentication failed. Please sign in again.';

  @override
  String get common_error_permission =>
      'You do not have permission to perform this action.';

  @override
  String get common_error_notFound =>
      'The requested record could not be found.';

  @override
  String get common_error_unknown => 'Something went wrong. Please try again.';

  @override
  String get common_success_saved => 'Saved successfully.';

  @override
  String get common_success_submitted => 'Report submitted successfully.';

  @override
  String get common_success_savedOffline =>
      'Your data has been saved locally. It will sync automatically once internet is available.';

  @override
  String get validation_required => 'This field is required';

  @override
  String get validation_nonNegative => 'Value cannot be negative';

  @override
  String get validation_positive => 'Value must be greater than zero';

  @override
  String get validation_invalidPhone => 'Enter a valid phone number';

  @override
  String get validation_invalidEmail => 'Enter a valid email address';

  @override
  String get validation_minLength => 'Value is too short';

  @override
  String get validation_invalidAge => 'Enter a valid age';

  @override
  String get validation_boysGirlsMismatch =>
      'Boys + Girls must equal Total Students';

  @override
  String get validation_dateInFuture => 'Date cannot be in the future';

  @override
  String get validation_endBeforeStart => 'End date must be after start date';

  @override
  String get sync_offline => 'Offline';

  @override
  String get sync_savedLocally => 'Saved Locally';

  @override
  String get sync_syncing => 'Syncing';

  @override
  String get sync_synced => 'Synced';

  @override
  String get sync_syncFailed => 'Sync Failed';

  @override
  String sync_pendingBanner(int count) {
    return '$count item(s) waiting to sync';
  }

  @override
  String get nav_home => 'Home';

  @override
  String get nav_schools => 'Schools';

  @override
  String get nav_monitoring => 'Monitoring';

  @override
  String get nav_reports => 'Reports';

  @override
  String get nav_more => 'More';

  @override
  String get more_admission => 'Admission';

  @override
  String get more_clusterMeetings => 'Cluster Meetings';

  @override
  String get more_ptc => 'PTC';

  @override
  String get more_ece => 'ECE';

  @override
  String get more_cleanliness => 'Cleanliness';

  @override
  String get more_plantation => 'Plantation';

  @override
  String get more_community => 'Community';

  @override
  String get more_schoolProblems => 'School Problems';

  @override
  String get more_emergency => 'Emergency';

  @override
  String get more_officialUpdates => 'Official Updates';

  @override
  String get more_notifications => 'Notifications';

  @override
  String get more_profile => 'Profile';

  @override
  String get more_settings => 'Settings';

  @override
  String get more_auditLog => 'Audit Log';

  @override
  String get more_adminManagement => 'User Management';

  @override
  String get role_superAdmin => 'Super Admin';

  @override
  String get role_districtAdmin => 'District Admin';

  @override
  String get role_subDivisionAdmin => 'Sub-Division Admin';

  @override
  String get role_circleAdmin => 'Circle/Cluster Admin';

  @override
  String get role_schoolLeader => 'School Leader / Head Teacher';

  @override
  String get role_monitoringOfficer => 'Monitoring Officer';

  @override
  String get setup_welcomeTitle => 'Welcome to School Leader DI Khan';

  @override
  String get setup_selectLanguage => 'Select Language';

  @override
  String get setup_selectDisplayMode => 'Select Display Mode';

  @override
  String get setup_light => 'Light';

  @override
  String get setup_dark => 'Dark';

  @override
  String get setup_systemDefault => 'System Default';

  @override
  String get setup_continue => 'Continue';

  @override
  String get auth_loginTitle => 'Sign In';

  @override
  String get auth_email => 'Email';

  @override
  String get auth_password => 'Password';

  @override
  String get auth_forgotPassword => 'Forgot Password?';

  @override
  String get auth_signIn => 'Sign In';

  @override
  String get auth_signOut => 'Sign Out';

  @override
  String get auth_notConfigured => 'Firebase is not configured yet';

  @override
  String get auth_notConfiguredBody =>
      'This app has not been connected to a Firebase project. Follow the setup instructions in the project README to enable sign-in and data sync.';

  @override
  String get settings_language => 'Language';

  @override
  String get settings_displayMode => 'Display Mode';

  @override
  String get settings_notifications => 'Notifications';

  @override
  String get settings_password => 'Password';

  @override
  String get settings_security => 'Security';

  @override
  String get settings_offlineSync => 'Offline Sync';

  @override
  String get settings_about => 'About';

  @override
  String get settings_privacyPolicy => 'Privacy Policy';

  @override
  String get settings_terms => 'Terms';

  @override
  String get settings_support => 'Support';

  @override
  String get settings_title => 'Settings';

  @override
  String get profile_title => 'Profile';

  @override
  String get profile_designation => 'Designation';

  @override
  String get profile_mobile => 'Mobile';

  @override
  String get dashboard_totalSchools => 'Total Schools';

  @override
  String get dashboard_totalClusters => 'Total Clusters';

  @override
  String get dashboard_totalEnrollment => 'Total Enrollment';

  @override
  String get dashboard_newAdmissions => 'New Admissions';

  @override
  String get dashboard_oosc => 'OOSC';

  @override
  String get dashboard_functionalSchools => 'Functional Schools';

  @override
  String get dashboard_schoolsNeedingAttention => 'Schools Requiring Attention';

  @override
  String get dashboard_pendingReports => 'Pending Reports';

  @override
  String get dashboard_quickActions => 'Quick Actions';

  @override
  String get dashboard_qa_admission => 'New Admission';

  @override
  String get dashboard_qa_monitoring => 'Monitoring Report';

  @override
  String get dashboard_qa_problem => 'School Problem';

  @override
  String get dashboard_qa_emergency => 'Emergency Report';

  @override
  String get dashboard_qa_ptc => 'PTC Activity';

  @override
  String get dashboard_qa_community => 'Community Activity';

  @override
  String get dashboard_qa_evidence => 'Upload Evidence';

  @override
  String get hierarchy_districts => 'Districts';

  @override
  String get hierarchy_subDivisions => 'Sub-Divisions';

  @override
  String get hierarchy_circles => 'Circles';

  @override
  String get hierarchy_clusters => 'Clusters';

  @override
  String get hierarchy_schools => 'Schools';

  @override
  String get hierarchy_addDistrict => 'Add District';

  @override
  String get hierarchy_addSubDivision => 'Add Sub-Division';

  @override
  String get hierarchy_addCircle => 'Add Circle';

  @override
  String get hierarchy_addCluster => 'Add Cluster';

  @override
  String get hierarchy_addSchool => 'Add School';

  @override
  String get hierarchy_name => 'Name';

  @override
  String get hierarchy_nameUrdu => 'Name (Urdu)';

  @override
  String get hierarchy_code => 'Code';

  @override
  String get hierarchy_active => 'Active';

  @override
  String get hierarchy_inactive => 'Inactive';

  @override
  String get hierarchy_selectDistrict => 'Select District';

  @override
  String get hierarchy_selectSubDivision => 'Select Sub-Division';

  @override
  String get hierarchy_selectCircle => 'Select Circle';

  @override
  String get hierarchy_selectCluster => 'Select Cluster';

  @override
  String get hierarchy_selectSchool => 'Select School';

  @override
  String get hierarchy_emisCode => 'EMIS Code';

  @override
  String get hierarchy_schoolLevel => 'School Level';

  @override
  String get hierarchy_schoolType => 'School Type';

  @override
  String get hierarchy_headTeacher => 'Head Teacher';

  @override
  String get hierarchy_totalEnrollment => 'Total Enrollment';

  @override
  String get hierarchy_noSchools => 'No schools found in this scope';

  @override
  String get hierarchy_noClusters => 'No clusters found';

  @override
  String get hierarchy_deactivateConfirm =>
      'Are you sure you want to deactivate this record?';

  @override
  String get hierarchy_village => 'Village/Locality';

  @override
  String get hierarchy_teachers => 'Teachers';

  @override
  String get hierarchy_boys => 'Boys';

  @override
  String get hierarchy_girls => 'Girls';

  @override
  String get hierarchy_classrooms => 'Classrooms';

  @override
  String get hierarchy_toilets => 'Toilets';

  @override
  String get hierarchy_facilities => 'Facilities';

  @override
  String get hierarchy_drinkingWater => 'Drinking Water';

  @override
  String get hierarchy_electricity => 'Electricity';

  @override
  String get hierarchy_boundaryWall => 'Boundary Wall';

  @override
  String get hierarchy_eceRoom => 'ECE Room';

  @override
  String get hierarchy_playground => 'Playground';

  @override
  String get hierarchy_furniture => 'Furniture';

  @override
  String get hierarchy_library => 'Library';

  @override
  String get hierarchy_itFacilities => 'IT Facilities';

  @override
  String get hierarchy_buildingCondition => 'Building Condition';

  @override
  String get hierarchy_location => 'Location';

  @override
  String get hierarchy_latitude => 'Latitude';

  @override
  String get hierarchy_longitude => 'Longitude';

  @override
  String get school_level_primary => 'Primary';

  @override
  String get school_level_elementary => 'Elementary';

  @override
  String get school_level_middle => 'Middle';

  @override
  String get school_level_high => 'High';

  @override
  String get school_level_higherSecondary => 'Higher Secondary';

  @override
  String get school_gender_boys => 'Boys';

  @override
  String get school_gender_girls => 'Girls';

  @override
  String get school_gender_mixed => 'Mixed';

  @override
  String get building_condition_good => 'Good';

  @override
  String get building_condition_needsRepair => 'Needs Repair';

  @override
  String get building_condition_critical => 'Critical';

  @override
  String get admission_target => 'Target';

  @override
  String get admission_achieved => 'Achieved';

  @override
  String get admission_academicYear => 'Academic Year';

  @override
  String get admission_previousEnrollment => 'Previous Enrollment';

  @override
  String get admission_currentEnrollment => 'Current Enrollment';

  @override
  String get admission_newAdmissionsBoys => 'New Admissions — Boys';

  @override
  String get admission_newAdmissionsGirls => 'New Admissions — Girls';

  @override
  String get admission_newAdmissionsTotal => 'New Admissions — Total';

  @override
  String get admission_ooscIdentified => 'OOSC Identified';

  @override
  String get admission_ooscReenrolled => 'OOSC Re-enrolled';

  @override
  String get admission_doorToDoorVisits => 'Door-to-door Visits';

  @override
  String get admission_parentMeetings => 'Parent Meetings';

  @override
  String get admission_communityMeetings => 'Community Meetings';

  @override
  String get admission_banners => 'Banners';

  @override
  String get admission_posters => 'Posters';

  @override
  String get admission_socialMediaActivities => 'Social Media Activities';

  @override
  String get admission_freeTextbooksDistributed => 'Free Textbooks Distributed';

  @override
  String get admission_otherSupport => 'Other Support';

  @override
  String get admission_status => 'Campaign Status';

  @override
  String get admission_status_planned => 'Planned';

  @override
  String get admission_status_active => 'Active';

  @override
  String get admission_status_completed => 'Completed';

  @override
  String get admission_noCampaigns => 'No admission campaigns recorded yet';

  @override
  String get admission_addCampaign => 'New Admission Campaign';

  @override
  String get admission_linkedOosc => 'OOSC linked to this campaign';

  @override
  String get oosc_childName => 'Child Name';

  @override
  String get oosc_childNameUrdu => 'Child Name (Urdu)';

  @override
  String get oosc_gender => 'Gender';

  @override
  String get oosc_age => 'Age';

  @override
  String get oosc_village => 'Village/Area';

  @override
  String get oosc_parentGuardian => 'Parent/Guardian';

  @override
  String get oosc_contact => 'Contact';

  @override
  String get oosc_reason => 'Reason for being out of school';

  @override
  String get oosc_reasonDetail => 'Reason Detail';

  @override
  String get oosc_previousSchool => 'Previous School';

  @override
  String get oosc_status => 'Status';

  @override
  String get oosc_followUpDate => 'Follow-up Date';

  @override
  String get oosc_noRecords => 'No out-of-school children recorded yet';

  @override
  String get oosc_addRecord => 'New OOSC Record';

  @override
  String get oosc_male => 'Male';

  @override
  String get oosc_female => 'Female';

  @override
  String get oosc_status_identified => 'Identified';

  @override
  String get oosc_status_contacted => 'Contacted';

  @override
  String get oosc_status_counseled => 'Counseled';

  @override
  String get oosc_status_reenrolled => 'Re-enrolled';

  @override
  String get oosc_status_notReenrolled => 'Not Re-enrolled';

  @override
  String get oosc_status_followUpRequired => 'Follow-up Required';

  @override
  String get oosc_reason_labor => 'Child Labor';

  @override
  String get oosc_reason_migration => 'Migration';

  @override
  String get oosc_reason_disability => 'Disability';

  @override
  String get oosc_reason_financial => 'Financial Hardship';

  @override
  String get oosc_reason_distance => 'Distance from School';

  @override
  String get oosc_reason_earlyMarriage => 'Early Marriage';

  @override
  String get oosc_reason_other => 'Other';

  @override
  String get monitoring_grade_excellent => 'Excellent';

  @override
  String get monitoring_grade_veryGood => 'Very Good';

  @override
  String get monitoring_grade_good => 'Good';

  @override
  String get monitoring_grade_needsImprovement => 'Needs Improvement';

  @override
  String get monitoring_grade_critical => 'Critical';

  @override
  String get monitoring_visitDate => 'Visit Date';

  @override
  String get monitoring_status_draft => 'Draft';

  @override
  String get monitoring_status_submitted => 'Submitted';

  @override
  String get monitoring_noReports => 'No monitoring reports recorded yet';

  @override
  String get monitoring_addReport => 'New Monitoring Report';

  @override
  String get monitoring_scoringConfig => 'Monitoring Score Weights';

  @override
  String get monitoring_criteria => 'Scoring Criteria';

  @override
  String get monitoring_weight => 'Weight';

  @override
  String get monitoring_maxScore => 'Max Score';

  @override
  String get monitoring_saveConfig => 'Save Weights';

  @override
  String get monitoring_configSaved => 'Scoring weights updated';

  @override
  String get monitoring_overallScore => 'Overall Score';

  @override
  String get priority_low => 'Low';

  @override
  String get priority_medium => 'Medium';

  @override
  String get priority_high => 'High';

  @override
  String get priority_critical => 'Critical';

  @override
  String get problem_status_open => 'Open';

  @override
  String get problem_status_inProgress => 'In Progress';

  @override
  String get problem_status_resolved => 'Resolved';

  @override
  String get problem_status_closed => 'Closed';

  @override
  String get problem_title => 'Problem Title';

  @override
  String get problem_titleUrdu => 'Problem Title (Urdu)';

  @override
  String get problem_category => 'Category';

  @override
  String get problem_description => 'Description';

  @override
  String get problem_descriptionUrdu => 'Description (Urdu)';

  @override
  String get problem_priority => 'Priority';

  @override
  String get problem_dateReported => 'Date Reported';

  @override
  String get problem_requiredSupport => 'Required Support';

  @override
  String get problem_assignedTo => 'Assigned Person';

  @override
  String get problem_expectedResolution => 'Expected Resolution Date';

  @override
  String get problem_resolutionNotes => 'Resolution Notes';

  @override
  String get problem_resolutionEvidence => 'Resolution Evidence';

  @override
  String get problem_reportedBy => 'Reported By';

  @override
  String get problem_noProblems => 'No school problems reported yet';

  @override
  String get problem_addProblem => 'Report a School Problem';

  @override
  String get problem_updateStatus => 'Update Status';

  @override
  String get problem_statusRestricted =>
      'Only monitoring officers and admins can change the status of a reported problem.';

  @override
  String get problem_summaryOpen => 'Open';

  @override
  String get problem_summaryInProgress => 'In Progress';

  @override
  String get problem_summaryResolved => 'Resolved';

  @override
  String get problem_summaryCritical => 'Critical';

  @override
  String get problem_category_infrastructure => 'Infrastructure';

  @override
  String get problem_category_furniture => 'Furniture';

  @override
  String get problem_category_water => 'Water';

  @override
  String get problem_category_toilets => 'Toilets';

  @override
  String get problem_category_boundaryWall => 'Boundary Wall';

  @override
  String get problem_category_electricity => 'Electricity';

  @override
  String get problem_category_classroom => 'Classroom';

  @override
  String get problem_category_ece => 'ECE';

  @override
  String get problem_category_cleanliness => 'Cleanliness';

  @override
  String get problem_category_staffing => 'Staffing';

  @override
  String get problem_category_safety => 'Safety';

  @override
  String get problem_category_academic => 'Academic';

  @override
  String get problem_category_other => 'Other';

  @override
  String get emergency_type => 'Emergency Type';

  @override
  String get emergency_severity => 'Severity';

  @override
  String get emergency_description => 'Description';

  @override
  String get emergency_descriptionUrdu => 'Description (Urdu)';

  @override
  String get emergency_occurredAt => 'Date & Time';

  @override
  String get emergency_immediateAction => 'Immediate Action Taken';

  @override
  String get emergency_requiredSupport => 'Required Support';

  @override
  String get emergency_contactPerson => 'Contact Person';

  @override
  String get emergency_contactPhone => 'Contact Number';

  @override
  String get emergency_casualties => 'Casualties (if any)';

  @override
  String get emergency_noReports => 'No emergencies reported';

  @override
  String get emergency_addReport => 'Report an Emergency';

  @override
  String get emergency_quickReport => 'Quick Emergency Report';

  @override
  String get emergency_activeCritical => 'Active critical emergencies';

  @override
  String get emergency_reportedBy => 'Reported By';

  @override
  String get emergency_updateStatus => 'Update Status';

  @override
  String get emergency_resolutionNotes => 'Resolution Notes';

  @override
  String get emergency_status_open => 'Open';

  @override
  String get emergency_status_responding => 'Responding';

  @override
  String get emergency_status_resolved => 'Resolved';

  @override
  String get emergency_type_fire => 'Fire';

  @override
  String get emergency_type_flood => 'Flood';

  @override
  String get emergency_type_buildingDamage => 'Building Damage';

  @override
  String get emergency_type_security => 'Security';

  @override
  String get emergency_type_naturalDisaster => 'Natural Disaster';

  @override
  String get emergency_type_health => 'Health Emergency';

  @override
  String get emergency_type_electricalHazard => 'Electrical Hazard';

  @override
  String get emergency_type_waterProblem => 'Water Problem';

  @override
  String get emergency_type_boundaryWall => 'Boundary Wall';

  @override
  String get emergency_type_other => 'Other';
}
