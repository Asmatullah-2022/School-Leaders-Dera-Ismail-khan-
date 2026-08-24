# Release builds run R8 with shrinking enabled. Flutter and Firebase supply
# their own consumer rules, but these keep the plugins this app uses from
# being stripped or renamed.

# Flutter engine
-keep class io.flutter.** { *; }
-keep class io.flutter.plugins.** { *; }

# Firebase / Google Play services
-keep class com.google.firebase.** { *; }
-keep class com.google.android.gms.** { *; }
-dontwarn com.google.firebase.**
-dontwarn com.google.android.gms.**

# Firestore serializes model data reflectively.
-keepclassmembers class * {
    @com.google.firebase.firestore.PropertyName <fields>;
}

# printing / pdf plugin
-keep class net.nfet.flutter.printing.** { *; }

# Core library desugaring
-dontwarn java.lang.invoke.**
-dontwarn **$$serializer
