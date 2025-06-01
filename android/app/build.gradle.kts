plugins {
    id("com.android.application")
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.example.sono" // Pastikan namespace ini sesuai dengan proyek Anda
    
    // DIUBAH: Menggunakan API Level 34 secara langsung
    compileSdk = 34
    
    ndkVersion = flutter.ndkVersion

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId = "com.example.sono" // Pastikan applicationId ini sesuai dengan proyek Anda
        
        // minSdk bisa tetap menggunakan variabel dari Flutter
        minSdk = flutter.minSdkVersion
        
        // DIUBAH: Menggunakan API Level 34 secara langsung
        targetSdk = 34
        
        // versionCode dan versionName tetap menggunakan variabel dari Flutter
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    buildTypes {
        release {
            // TODO: Add your own signing config for the release build.
            // Signing with the debug keys for now, so `flutter run --release` works.
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {
    source = "../.."
}

dependencies {

}