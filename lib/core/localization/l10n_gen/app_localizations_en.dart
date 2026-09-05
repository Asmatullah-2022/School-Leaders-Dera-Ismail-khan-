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

  @override
  String get ptc_meetingDate => 'Meeting Date';

  @override
  String get ptc_priorityTitle => 'Priority';

  @override
  String get ptc_priorityTitleUrdu => 'Priority (Urdu)';

  @override
  String get ptc_category => 'Category';

  @override
  String get ptc_priorityLevel => 'Priority Level';

  @override
  String get ptc_estimatedCost => 'Estimated Cost';

  @override
  String get ptc_availableFunds => 'Available Funds';

  @override
  String get ptc_requiredFunds => 'Required Funds';

  @override
  String get ptc_proposedAction => 'Proposed Action';

  @override
  String get ptc_decision => 'Decision';

  @override
  String get ptc_responsiblePerson => 'Responsible Person';

  @override
  String get ptc_targetDate => 'Target Date';

  @override
  String get ptc_rank => 'Rank';

  @override
  String get ptc_noPriorities => 'No PTC priorities recorded yet';

  @override
  String get ptc_addPriority => 'New PTC Priority';

  @override
  String get ptc_reorderHint => 'Press and hold to drag a priority into order';

  @override
  String get ptc_status_proposed => 'Proposed';

  @override
  String get ptc_status_approved => 'Approved';

  @override
  String get ptc_status_inProgress => 'In Progress';

  @override
  String get ptc_status_completed => 'Completed';

  @override
  String get ptc_category_furniture => 'Furniture';

  @override
  String get ptc_category_buildingRepair => 'Building Repair';

  @override
  String get ptc_category_water => 'Water';

  @override
  String get ptc_category_toilets => 'Toilets';

  @override
  String get ptc_category_boundaryWall => 'Boundary Wall';

  @override
  String get ptc_category_electricity => 'Electricity';

  @override
  String get ptc_category_classroom => 'Classroom';

  @override
  String get ptc_category_ece => 'ECE';

  @override
  String get ptc_category_cleanliness => 'Cleanliness';

  @override
  String get ptc_category_plantation => 'Plantation';

  @override
  String get ptc_category_learningMaterials => 'Learning Materials';

  @override
  String get ptc_category_other => 'Other';

  @override
  String get reports_title => 'Reports Center';

  @override
  String get reports_selectModule => 'Report';

  @override
  String get reports_language => 'Report Language';

  @override
  String get reports_language_english => 'English';

  @override
  String get reports_language_urdu => 'اردو';

  @override
  String get reports_language_bilingual => 'Bilingual';

  @override
  String get reports_fromDate => 'From Date';

  @override
  String get reports_toDate => 'To Date';

  @override
  String get reports_allSchools => 'All schools in my scope';

  @override
  String get reports_preview => 'Preview';

  @override
  String reports_recordCount(int count) {
    return '$count record(s)';
  }

  @override
  String get reports_exportPdf => 'Export PDF';

  @override
  String get reports_exportCsv => 'Export CSV';

  @override
  String get reports_noData => 'No records match these filters';

  @override
  String get reports_exportFailed => 'Export could not be completed';

  @override
  String get reports_module_admission => 'Admission Campaigns';

  @override
  String get reports_module_oosc => 'Out-of-School Children';

  @override
  String get reports_module_monitoring => 'School Monitoring';

  @override
  String get reports_module_problems => 'School Problems';

  @override
  String get reports_module_emergency => 'Emergency Reports';

  @override
  String get reports_module_ptc => 'PTC Priorities';

  @override
  String get update_title => 'Title';

  @override
  String get update_titleUrdu => 'Title (Urdu)';

  @override
  String get update_description => 'Description';

  @override
  String get update_descriptionUrdu => 'Description (Urdu)';

  @override
  String get update_category => 'Category';

  @override
  String get update_priority => 'Priority';

  @override
  String get update_audience => 'Target Audience';

  @override
  String get update_publishDate => 'Publish Date';

  @override
  String get update_eventDate => 'Event Date';

  @override
  String get update_published => 'Published';

  @override
  String get update_draft => 'Draft';

  @override
  String get update_publish => 'Publish';

  @override
  String get update_unpublish => 'Unpublish';

  @override
  String get update_addUpdate => 'New Official Update';

  @override
  String get update_noUpdates => 'No official updates yet';

  @override
  String get update_deleteConfirm => 'Delete this official update?';

  @override
  String get update_category_announcement => 'Announcement';

  @override
  String get update_category_circular => 'Circular';

  @override
  String get update_category_notification => 'Notification';

  @override
  String get update_category_campaign => 'Campaign';

  @override
  String get update_category_training => 'Training';

  @override
  String get update_category_meeting => 'Meeting';

  @override
  String get update_category_importantDate => 'Important Date';

  @override
  String get update_category_educationInitiative => 'Education Initiative';

  @override
  String get update_priority_normal => 'Normal';

  @override
  String get update_priority_important => 'Important';

  @override
  String get update_priority_urgent => 'Urgent';

  @override
  String get update_audience_all => 'Everyone';

  @override
  String get update_audience_schoolLeaders => 'School Leaders';

  @override
  String get update_audience_monitoringOfficers => 'Monitoring Officers';

  @override
  String get update_audience_admins => 'Administrators';

  @override
  String get audit_noEntries => 'No audit entries';

  @override
  String get audit_actor => 'User';

  @override
  String get audit_action => 'Action';

  @override
  String get audit_record => 'Record';

  @override
  String get audit_time => 'Date & Time';

  @override
  String get audit_readOnlyNote =>
      'Audit entries are written by the server and cannot be edited.';

  @override
  String get audit_action_login => 'Login';

  @override
  String get audit_action_logout => 'Logout';

  @override
  String get audit_action_create => 'Create';

  @override
  String get audit_action_update => 'Update';

  @override
  String get audit_action_delete => 'Delete';

  @override
  String get audit_action_submit => 'Submit';

  @override
  String get audit_action_approve => 'Approve';

  @override
  String get audit_action_reject => 'Reject';

  @override
  String get audit_action_returned => 'Returned';

  @override
  String get audit_action_roleChange => 'Role Change';

  @override
  String get audit_action_export => 'Export';

  @override
  String get notifications_empty => 'No notifications yet';

  @override
  String get doorToDoor_title => 'Door-to-Door Campaign';

  @override
  String get doorToDoor_area => 'Area';

  @override
  String get doorToDoor_teamMembers => 'Team Members';

  @override
  String get doorToDoor_housesVisited => 'Houses Visited';

  @override
  String get doorToDoor_childrenIdentified => 'Children Identified';

  @override
  String get doorToDoor_childrenEnrolled => 'Children Enrolled';

  @override
  String get doorToDoor_parentsContacted => 'Parents Contacted';

  @override
  String get doorToDoor_addActivity => 'New Door-to-Door Activity';

  @override
  String get doorToDoor_noActivities =>
      'No door-to-door activities recorded yet';

  @override
  String get community_addActivity => 'New Community Activity';

  @override
  String get community_noActivities => 'No community activities recorded yet';

  @override
  String get community_activityType => 'Activity Type';

  @override
  String get community_participants => 'Participants';

  @override
  String get community_femaleParticipants => 'Female Participants';

  @override
  String get community_venue => 'Venue';

  @override
  String get community_type_parentMeeting => 'Parent Meeting';

  @override
  String get community_type_communityMeeting => 'Community Meeting';

  @override
  String get community_type_localEngagement => 'Local Community Engagement';

  @override
  String get community_type_awarenessSession => 'Awareness Session';

  @override
  String get community_type_enrollmentCounseling => 'Enrollment Counseling';

  @override
  String get community_type_ooscIdentification => 'OOSC Identification';

  @override
  String get community_type_reEnrollmentActivity => 'Re-enrollment Activity';

  @override
  String get community_type_communitySupport => 'Community Support';

  @override
  String get community_type_femaleParentEngagement =>
      'Female Parent Engagement';

  @override
  String get parentContact_addContact => 'New Parent Contact';

  @override
  String get parentContact_noContacts =>
      'No parent-teacher contacts recorded yet';

  @override
  String get parentContact_parentName => 'Parent Name';

  @override
  String get parentContact_studentName => 'Student Name';

  @override
  String get parentContact_contactNumber => 'Contact Number';

  @override
  String get parentContact_contactMethod => 'Contact Method';

  @override
  String get parentContact_purpose => 'Purpose';

  @override
  String get parentContact_discussion => 'Discussion';

  @override
  String get parentContact_result => 'Result';

  @override
  String get parentContact_followUpRequired => 'Follow-up Required';

  @override
  String get parentContact_followUpDate => 'Follow-up Date';

  @override
  String get parentContact_method_schoolVisit => 'School Visit';

  @override
  String get parentContact_method_homeVisit => 'Home Visit';

  @override
  String get parentContact_method_phoneCall => 'Phone Call';

  @override
  String get parentContact_method_sms => 'SMS';

  @override
  String get parentContact_method_whatsapp => 'WhatsApp';

  @override
  String get parentContact_method_meeting => 'Meeting';

  @override
  String get parentContact_method_other => 'Other';

  @override
  String get advertisement_title => 'Advertisement Campaigns';

  @override
  String get advertisement_addCampaign => 'New Advertisement Campaign';

  @override
  String get advertisement_noCampaigns =>
      'No advertisement campaigns recorded yet';

  @override
  String get advertisement_campaignTitle => 'Campaign Title';

  @override
  String get advertisement_type => 'Advertisement Type';

  @override
  String get advertisement_location => 'Location';

  @override
  String get advertisement_quantity => 'Quantity';

  @override
  String get advertisement_type_banner => 'Banner';

  @override
  String get advertisement_type_poster => 'Poster';

  @override
  String get advertisement_type_pamphlet => 'Pamphlet';

  @override
  String get advertisement_type_schoolWallAwareness => 'School Wall Awareness';

  @override
  String get advertisement_type_communityAnnouncement =>
      'Community Announcement';

  @override
  String get advertisement_type_mosqueAnnouncement => 'Mosque Announcement';

  @override
  String get advertisement_type_other => 'Other';

  @override
  String get socialMedia_title => 'Social Media Campaigns';

  @override
  String get socialMedia_addCampaign => 'New Social Media Campaign';

  @override
  String get socialMedia_noCampaigns =>
      'No social media campaigns recorded yet';

  @override
  String get socialMedia_platform => 'Platform';

  @override
  String get socialMedia_postUrl => 'Post URL';

  @override
  String get socialMedia_reach => 'Reach';

  @override
  String get socialMedia_engagement => 'Engagement';

  @override
  String get socialMedia_platform_facebook => 'Facebook';

  @override
  String get socialMedia_platform_whatsapp => 'WhatsApp';

  @override
  String get socialMedia_platform_tiktok => 'TikTok';

  @override
  String get socialMedia_platform_instagram => 'Instagram';

  @override
  String get socialMedia_platform_youtube => 'YouTube';

  @override
  String get socialMedia_platform_other => 'Other';

  @override
  String get textbook_title => 'Textbook Distribution';

  @override
  String get textbook_addRecord => 'New Textbook Record';

  @override
  String get textbook_noRecords => 'No textbook distribution records yet';

  @override
  String get textbook_academicYear => 'Academic Year';

  @override
  String get textbook_classGrade => 'Class/Grade';

  @override
  String get textbook_subject => 'Subject';

  @override
  String get textbook_booksRequired => 'Books Required';

  @override
  String get textbook_booksAvailable => 'Books Available';

  @override
  String get textbook_booksDistributed => 'Books Distributed';

  @override
  String get textbook_studentsReceiving => 'Students Receiving';

  @override
  String get textbook_shortage => 'Shortage';

  @override
  String get textbook_otherMaterials => 'Other Learning Materials';

  @override
  String get textbook_supportRequired => 'Support Required';

  @override
  String get clusterMeeting_addMeeting => 'New Cluster Meeting';

  @override
  String get clusterMeeting_noMeetings => 'No cluster meetings recorded yet';

  @override
  String get clusterMeeting_meetingTime => 'Meeting Time';

  @override
  String get clusterMeeting_venue => 'Venue';

  @override
  String get clusterMeeting_chairperson => 'Chairperson';

  @override
  String get clusterMeeting_participantsCount => 'Participants';

  @override
  String get clusterMeeting_agenda => 'Agenda';

  @override
  String get clusterMeeting_agendaUrdu => 'Agenda (Urdu)';

  @override
  String get clusterMeeting_decisions => 'Decisions';

  @override
  String get clusterMeeting_minutes => 'Minutes of Meeting';

  @override
  String get clusterMeeting_status_pending => 'Pending';

  @override
  String get clusterMeeting_status_inProgress => 'In Progress';

  @override
  String get clusterMeeting_status_completed => 'Completed';

  @override
  String get clusterMeeting_actionsTitle => 'Action Items';

  @override
  String get clusterMeeting_addAction => 'Add Action';

  @override
  String get clusterMeeting_noActions => 'No action items yet';

  @override
  String get clusterMeeting_actionText => 'Action';

  @override
  String get clusterMeeting_responsiblePerson => 'Responsible Person';

  @override
  String get clusterMeeting_deadline => 'Deadline';

  @override
  String get statement_title => 'Statements';

  @override
  String get statement_addStatement => 'New Statement';

  @override
  String get statement_noStatements => 'No statements recorded yet';

  @override
  String get statement_statementType => 'Statement Type';

  @override
  String get statement_period => 'Period';

  @override
  String get statement_periodStart => 'Period Start';

  @override
  String get statement_periodEnd => 'Period End';

  @override
  String get statement_submittedAt => 'Submitted On';

  @override
  String get statement_reviewedAt => 'Reviewed On';

  @override
  String get statement_reviewNotes => 'Review Notes';

  @override
  String get statement_dataFields => 'Statement Data';

  @override
  String get statement_fieldName => 'Field Name';

  @override
  String get statement_fieldValue => 'Value';

  @override
  String get statement_submit => 'Submit for Review';

  @override
  String get statement_status_draft => 'Draft';

  @override
  String get statement_status_submitted => 'Submitted';

  @override
  String get statement_status_underReview => 'Under Review';

  @override
  String get statement_status_approved => 'Approved';

  @override
  String get statement_status_returned => 'Returned';

  @override
  String get functionality_title => 'School Functionality';

  @override
  String get functionality_addAssessment => 'New Functionality Assessment';

  @override
  String get functionality_noAssessments =>
      'No functionality assessments recorded yet';

  @override
  String get functionality_teachersPresent => 'Teachers Present';

  @override
  String get functionality_teachersTotal => 'Teachers Total';

  @override
  String get functionality_studentsPresent => 'Students Present';

  @override
  String get functionality_studentsTotal => 'Students Total';

  @override
  String get functionality_schoolOpen => 'School Open';

  @override
  String get functionality_headTeacherPresent => 'Head Teacher Present';

  @override
  String get functionality_classesConducted => 'Classes Conducted';

  @override
  String get functionality_teachingActivityObserved =>
      'Teaching Activity Observed';

  @override
  String get functionality_cleanlinessSatisfactory =>
      'Cleanliness Satisfactory';

  @override
  String get functionality_basicFacilitiesAvailable =>
      'Basic Facilities Available';

  @override
  String get functionality_timetableDisplayed => 'Timetable Displayed';

  @override
  String get functionality_morningAssemblyHeld => 'Morning Assembly Held';

  @override
  String get functionality_learningEnvironmentSatisfactory =>
      'Learning Environment Satisfactory';

  @override
  String get functionality_overallStatus => 'Overall Status';

  @override
  String get functionality_status_functional => 'Functional';

  @override
  String get functionality_status_partiallyFunctional => 'Partially Functional';

  @override
  String get functionality_status_needsAttention => 'Needs Attention';

  @override
  String get functionality_status_nonFunctional => 'Non-Functional';

  @override
  String get schoolOpening_title => 'Keeping Schools Open';

  @override
  String get schoolOpening_addCheck => 'New Opening Check';

  @override
  String get schoolOpening_noChecks => 'No opening checks recorded yet';

  @override
  String get schoolOpening_open => 'Open';

  @override
  String get schoolOpening_closed => 'Closed';

  @override
  String get schoolOpening_isOpen => 'School Open Today';

  @override
  String get schoolOpening_openingTime => 'Opening Time';

  @override
  String get schoolOpening_closingTime => 'Closing Time';

  @override
  String get schoolOpening_reasonIfClosed => 'Reason If Closed';

  @override
  String get schoolOpening_actionRequired => 'Action Required';
}
