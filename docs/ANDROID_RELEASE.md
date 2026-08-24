# Android build & release

Prerequisites: Flutter SDK, JDK 17, and the Android SDK (via Android Studio or
`cmdline-tools`). Confirm with `flutter doctor` — the "Android toolchain" line
must be a ✓.

Complete [Firebase Setup](../README.md#firebase-setup) first. Without
`android/app/google-services.json` the Gradle build fails at the
`com.google.gms.google-services` plugin step.

## Debug build

```bash
flutter run                       # attached device or emulator
flutter build apk --debug
```

## Release signing

Release builds are configured to fail loudly rather than silently ship a
debug-signed APK, so you must create a keystore first.

### 1. Generate a keystore

```bash
keytool -genkey -v -keystore ~/school-leader-dikhan-release.jks \
  -keyalg RSA -keysize 2048 -validity 10000 -alias school-leader
```

> **Keep this file and its passwords safe and backed up.** Google Play ties an
> app's identity to its signing key — lose it and you cannot publish an update
> to the same listing.

### 2. Point the build at it

Create `android/key.properties` (already gitignored — never commit it):

```properties
storePassword=<password from step 1>
keyPassword=<password from step 1>
keyAlias=school-leader
storeFile=/absolute/path/to/school-leader-dikhan-release.jks
```

That is the only step. `android/app/build.gradle.kts` already reads this file
and wires the signing config, R8 shrinking and ProGuard rules. If the file is
missing, the release build **fails** instead of quietly producing a
debug-signed artifact you cannot publish.

## Build artifacts

```bash
# Play Store (preferred — Play generates per-device APKs)
flutter build appbundle --release
# → build/app/outputs/bundle/release/app-release.aab

# Direct install / sideloading
flutter build apk --release --split-per-abi
# → build/app/outputs/flutter-apk/app-arm64-v8a-release.apk (and armeabi-v7a, x86_64)
```

`--split-per-abi` is strongly recommended for direct distribution: a universal
APK bundles every architecture and is roughly three times larger, which matters
on low-bandwidth connections.

## Versioning

Bump `version:` in `pubspec.yaml` (`versionName+versionCode`, e.g.
`1.0.1+2`). Play rejects an upload whose `versionCode` is not higher than the
previous one.

## Pre-release checklist

Static checks:

```bash
flutter analyze
flutter test
dart format --set-exit-if-changed .
```

On-device checks that **cannot** be covered by the above and must be done
manually before a real rollout:

- Sign in with each role and confirm a School Leader sees only their own
  school's records.
- Switch to اردو: verify RTL layout, no clipped or overflowing text, and that
  phone/EMIS/coordinate fields still read left-to-right.
- Light, dark and system theme.
- Turn airplane mode on, submit a form and attach a photo, then reconnect —
  confirm the record and image sync and are not duplicated.
- Export a report as PDF and CSV in all three language modes; open the CSV in
  Excel to confirm Urdu headers render (the BOM handles this).
- Trigger an emergency and confirm the supervising tier receives it.
- Test on a small screen and a low-end device — the target audience is not on
  flagship hardware.
