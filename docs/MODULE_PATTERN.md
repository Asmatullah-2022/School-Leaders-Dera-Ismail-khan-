# Adding a new feature module

This app ships 5 "flagship" modules built to full production depth
(`admission_campaign`, `school_monitoring`, `school_problems`,
`emergency_reports`, `ptc_priorities`) and a set of "scaffold-only" modules
(door_to_door, community_engagement, parent_teacher_contact,
advertisement_campaigns, social_media_campaigns, textbook_distribution,
cluster_meetings, statements, school_functionality, school_opening,
cleanliness, plantation, ece_monitoring) that have a real Firestore-backed
model + repository but no screens yet.

Use `lib/features/admission_campaign/` as the reference implementation. To
bring a scaffold module up to full depth:

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
6. **Routing** — replace the module's `_placeholder(...)` entries in
   `lib/core/routing/app_router.dart` with real `GoRoute`s pointing at the
   new screens.
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
