# Adding a new feature module

This app ships 5 "flagship" modules built to full production depth
(`admission_campaign`, `school_monitoring`, `school_problems`,
`emergency_reports`, `ptc_priorities`) and 13 further modules
(door_to_door, community_engagement, parent_teacher_contact,
advertisement_campaigns, social_media_campaigns, textbook_distribution,
cluster_meetings, statements, school_functionality, school_opening,
cleanliness, plantation, ece_monitoring) that now also have full CRUD UI
(list/form/detail screens, bilingual ARB strings, router + More-menu
wiring) built against the shared `ScopedFirestoreRepository<T>` — see
`lib/features/scaffold_modules/presentation/providers/scaffold_module_providers.dart`
for their wiring. The one deliberately unfinished piece for these 13 is
**Reports Center export adapters** (step 7 below) — they are not yet
included in PDF/CSV exports; add an adapter per module when that's needed.

Use `lib/features/admission_campaign/` as the reference implementation for a
flagship-depth module, or `lib/features/cleanliness/` /
`lib/features/statements/` for a plain-CRUD / workflow-driven module built on
the shared repository. Steps below are the general recipe for any future
module (or for adding Reports Center support to an existing one):

1. **Model** — already exists at
   `lib/features/<module>/data/models/<module>_model.dart` (freezed +
   json_serializable, with `id`, denormalized hierarchy fields,
   `createdAt`/`updatedAt`/`createdBy`, `isSynced`, and the static
   `dateFields` / `orderByField` the repository needs).
2. **Repository** — **already done, nothing to write.** Every scaffold
   module is a plain CRUD collection, so they all share the generic
   `ScopedFirestoreRepository<T>`
   (`lib/core/data/scoped_firestore_repository.dart`), which provides
   `watchByScope`, `getById`, `create`, `update`, `delete`, and
   `queueEvidencePhoto` on top of `OfflineWriteHelper`. The wiring lives in
   `lib/features/scaffold_modules/presentation/providers/scaffold_module_providers.dart`
   — each module is one repository provider plus one scoped-list provider.

   Write a hand-rolled repository *only* when a module needs behaviour the
   generic one can't express. The five flagship modules do: notification
   fan-out on create (emergency), batched rank rewrites (PTC), campaign
   linkage (OOSC), config snapshotting (monitoring).
3. **Providers** — the repository and list providers already exist (step 2).
   Add a `FutureProvider.family<Entity?, String>` for the detail screen and
   any form controller state, matching the flagship modules.
4. **Screens** — add `presentation/screens/<module>_list_screen.dart`,
   `_form_screen.dart`, `_detail_screen.dart`, reusing `AppScaffold`,
   `AppTextField`, `PhotoPickerField`, `SchoolPicker`,
   `HierarchyCascadePicker`, `EmptyState`, `ErrorView`, `LoadingIndicator`,
   `showConfirmDialog`.
5. **Localization** — add ARB keys under a `<module>_*` namespace to both
   `app_en.arb` and `app_ur.arb` for every field label, enum value, and
   validation message the new form introduces; reuse `common_*` for
   buttons/generic labels.
6. **Routing** — add a real `GoRoute` in `lib/core/routing/app_router.dart`
   pointing at the module's list screen (list/form/detail navigation within
   a module is a plain `Navigator.push`/`MaterialPageRoute`, not nested
   `GoRoute`s — see any of the 13 modules above for the pattern), and add an
   entry to `lib/features/dashboard/presentation/screens/more_menu_screen.dart`
   so it's reachable from the More tab. Only `schoolDetail`, `adminUsers`,
   and `adminUserForm` remain wired to `_placeholder(...)`.
7. **Reports Center** — add an export adapter entry in
   `lib/features/reports_center/data/report_export_repository_impl.dart` so
   the module's records can be included in PDF/CSV exports.
8. **Security rules** — add the collection's scope/role rules to
   `firebase/firestore.rules` following the existing pattern (see
   `hasScopeAccess()` and the per-collection blocks already defined for the
   flagship collections), and add any new compound-query indexes to
   `firebase/firestore.indexes.json`.

Every step above has a 1:1 flagship-module file to copy from — none of this
pattern is invented from scratch per module.
