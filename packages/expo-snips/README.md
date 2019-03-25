# expo-snips

Expo Snips standalone universal module

# API documentation

- [Documentation for the master branch](https://github.com/expo/expo/blob/master/docs/pages/versions/unversioned/sdk/snips.md)
- [Documentation for the latest stable release](https://docs.expo.io/versions/latest/sdk/snips/)

# Installation

This package is pre-installed in [managed](https://docs.expo.io/versions/latest/introduction/managed-vs-bare/) Expo projects. You may skip the rest of the installation guide if this applies to you.

For bare React Native projects, you must ensure that you have [installed and configured the `@unimodules/core` package](https://github.com/unimodules/core) before continuing.

### Add the package to your npm dependencies

```
npm install expo-snips
```

### Configure for iOS

Add the dependency to your `Podfile` and then run `pod install`.

```ruby
pod 'EXSnipsModule', path: '../node_modules/expo-snips/ios'
```

### Configure for Android

1. Append the following lines to `android/settings.gradle`:

```gradle
include ':expo-snips'
project(':expo-snips').projectDir = new File(rootProject.projectDir, '../node_modules/expo-snips/android')
```

2. Insert the following lines inside the dependencies block in `android/app/build.gradle`:

```gradle
api project(':expo-snips')
```

# Contributing

Contributions are very welcome! Please refer to guidelines described in the [contributing guide](https://github.com/expo/expo#contributing).
