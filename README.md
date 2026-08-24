# School Leader District Dera Ismail Khan

**School Leader DI Khan** — School Leadership, Monitoring & Management System
**سکول لیڈر — ضلع ڈیرہ اسماعیل خان**

A bilingual (English / اردو), offline-capable Flutter + Firebase application for
school leaders, head teachers, cluster staff and monitoring officers of
District Dera Ismail Khan, Khyber Pakhtunkhwa.

---

## ⚠️ Before you can run this app

This repository contains the complete application source, but **no Firebase
project is attached to it**. `lib/firebase_options.dart` is a placeholder with
no real credentials. Until you complete [Firebase Setup](#firebase-setup)
below, the app builds and launches but shows a "Firebase not configured"
state instead of signing in — it will not crash, but nothing will sync.

---

## What is implemented

### Foundation
- **Bilingual UI** — every user-facing string resolves through
  `AppLocalizations`; 443 keys with full English/Urdu parity. Urdu selects RTL
  automatically; fields that must stay LTR (phone numbers, EMIS codes,
  coordinates) use `AppTextField(forceLtr: true)`.
- **Theming** — Material 3, dark-green education palette, light / dark /
  system modes, persisted across restarts.
- **Roles** — Super Admin, District Admin, Sub-Division Admin, Circle/Cluster
  Admin, School Leader / Head Teacher, Monitoring Officer.
- **Hierarchy** — District → Sub-Division → Circle → Cluster → School, fully
  admin-managed (nothing hard-coded). Cascading pickers reused by every form.
- **Offline-first** — writes go to a Hive cache immediately, then Firestore;
  on failure they queue and replay when connectivity returns. Every document
  id is a client-generated UUID, so a replayed write is idempotent and can
  never duplicate a record. Evidence photos queue the same way.
- **Reports Center** — bilingual PDF + CSV export with bundled fonts (works
  offline), date/school filters, on-screen preview.

### Modules built to full depth
| Module | Highlights |
|---|---|
| Admission Campaign + OOSC | Achievement % with live gauge; OOSC status pipeline; campaign linkage |
| School Monitoring | Configurable weights, **snapshotted per report** so historical scores stay valid |
| School Problems | Role-gated workflow; Open cannot skip to Closed; Resolved can be reopened |
| Emergency Reports | SOS quick-report; notifies the supervising tier; critical highlighting |
| PTC Priorities | Drag-to-reorder ranking with contiguous renumbering; funding math |

Plus **Official Updates** (admin CRUD, scope-aware visibility), **Audit Log**
viewer (read-only), and **Notifications** (in-app list + FCM registration).

### Modules scaffolded (data layer complete, UI pending)
Door-to-door, community engagement, parent–teacher contact, advertisement
campaigns, social media campaigns, textbook distribution, cluster meetings
(+ meeting actions), statements/goshwaraat, school functionality, school
opening, cleanliness, plantation, ECE monitoring.

Each has a typed model and a working Firestore-backed repository (via the
shared `ScopedFirestoreRepository`) — only screens remain. See
[`docs/MODULE_PATTERN.md`](docs/MODULE_PATTERN.md).

---

## Firebase Setup

You need the [Firebase CLI](https://firebase.google.com/docs/cli) and
[FlutterFire CLI](https://firebase.flutter.dev/docs/cli/):

```bash
npm install -g firebase-tools
dart pub global activate flutterfire_cli
firebase login
```

### 1. Create the project
Go to the [Firebase console](https://console.firebase.google.com) → **Add
project**. Name it e.g. `school-leader-di-khan`.

### 2. Enable the services
In the console:
- **Authentication** → Sign-in method → enable **Email/Password**.
- **Firestore Database** → Create database → **Production mode** → pick the
  region closest to Pakistan (`asia-south1` recommended).
- **Storage** → Get started → Production mode, same region.
- **Cloud Messaging** — enabled automatically; no action needed.

### 3. Connect this app
From the repository root:

```bash
flutterfire configure --project=<your-project-id>
```

This **overwrites `lib/firebase_options.dart`** with real values and writes
`android/app/google-services.json`. Both are gitignored — they are per-project
and should not be committed to a shared template repo.

### 4. Deploy rules and indexes

```bash
cd firebase
firebase deploy --only firestore:rules,firestore:indexes,storage --project=<your-project-id>
```

Index creation takes several minutes. Until it finishes, list screens may
error with a "requires an index" message — that is expected and resolves
itself.

### 5. Seed the first Super Admin
Authentication has no users yet, and the app cannot create the first admin
(only admins may create users). Do this once, manually:

1. **Authentication → Users → Add user** — enter an email and password. Copy
   the generated **User UID**.
2. **Firestore → Start collection** `users` → **Document ID = that exact UID**,
   with these fields:

| Field | Type | Value |
|---|---|---|
| `uid` | string | the same UID |
| `email` | string | the email you used |
| `displayName` | string | e.g. `District Administrator` |
| `role` | string | `super_admin` |
| `isActive` | boolean | `true` |
| `preferredLocale` | string | `en` |
| `fcmTokens` | array | *(leave empty)* |

> The `role` value must be exactly one of: `super_admin`, `district_admin`,
> `sub_division_admin`, `circle_admin`, `school_leader`, `monitoring_officer`.
> A Super Admin needs no scope ids; every other role needs the id of the level
> it manages (e.g. a School Leader needs `schoolId` **and** its ancestor ids
> `clusterId`, `circleId`, `subDivisionId`, `districtId`).

3. Sign in to the app with that email. You can now create the District,
   Sub-Divisions, Circles, Clusters and Schools from **More → Districts** etc.,
   and add further users.

### 6. (Optional) Emergency push notifications
Creating an emergency writes a Firestore `notifications` document, which the
in-app list reads immediately. To also deliver a **push**, deploy a Cloud
Function that triggers on `emergency_reports/{id}` create and sends to the
`fcmTokens` of the relevant supervising users. The app already registers and
refreshes device tokens (`FcmService`); only the sending side is left to you.

### Local testing without a real project
```bash
cd firebase && firebase emulators:start
```
Starts Auth, Firestore and Storage emulators with these rules applied — useful
for exercising role-based access before touching production data.

---

## Development

```bash
flutter pub get
flutter gen-l10n                                   # after editing .arb files
dart run build_runner build --delete-conflicting-outputs   # after editing models
flutter analyze
flutter test
```

**After changing an `.arb` file you must run `flutter gen-l10n`**, and after
changing a `@freezed` model you must re-run `build_runner` — otherwise the
generated code goes stale and analysis fails.

### Project layout
```
lib/
  core/          constants, theme, localization, routing, error, network,
                 firebase (paths + scope filter), local_db (Hive + sync queue),
                 data (generic scoped repository), widgets, utils
  features/<module>/
      data/        models (freezed) + repository implementation
      domain/      entities, repository interfaces, usecases
      presentation/ providers, screens, widgets
firebase/        firestore.rules, storage.rules, firestore.indexes.json
assets/fonts/    Noto Sans + Noto Naskh Arabic (bundled for offline PDF)
docs/            MODULE_PATTERN.md
```

### Architecture notes
- **State**: Riverpod. Screens depend on repository *interfaces* via providers,
  never concrete classes.
- **Scoping**: every transactional document denormalizes its full ancestor
  chain (`schoolId`/`clusterId`/`circleId`/`subDivisionId`/`districtId`).
  `ScopeFilter` turns the signed-in user's role into a single equality filter,
  so permission checks are the same shape in the client and in the rules — and
  no query needs a join.
- **Security**: rules re-derive scope server-side from `users/{uid}`; the
  client's filter is a convenience, not the enforcement point. Audit logs are
  write-denied to all clients.

---

## Build & release

See [`docs/ANDROID_RELEASE.md`](docs/ANDROID_RELEASE.md) for keystore
generation, signing configuration and producing a release APK/AAB.

---

## Project status

`flutter analyze` is clean and **57 tests pass**, covering the admission
achievement calculation, monitoring weighted scoring and grade banding, the
problem status-transition rules, PTC rank reassignment, report filtering, CSV
encoding and real PDF generation.

**Not yet verified:** this codebase has never been run against a live Firebase
project, on a physical device, or as a release build — that requires the setup
above plus an Android toolchain. Static analysis and unit tests are the extent
of the verification performed so far. Treat the first run-through of §5 as
commissioning, not as a regression check.

Remaining work is UI for the scaffolded modules listed above.
