# User_Auth

A Flutter project built with Firebase backend with basic login and signup functionality

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## How to use 
To use the project. 

### Step-1

Download or clone the repository using the following link 

```bash
https://github.com/Ash2312/GameStoreUI.git
```

### Step-2

Go to the terminal of Android Studio/VSCode or any IDE that you are using and run the following commands 

```bash
flutter pub get
```

**flutter pub get** installs the required dependencies that I have used in the project

### Step-3

Connect with an emulator or a physical device where you want to run the application and run the following command 

```bash
flutter run
```

you can also run the application by clicking on the **run** on the options panel and click on **run without debugging**

## Running Flutter Launcher Icons

**flutter_launcher_icons** is a flutter package that one can use to change the application icon, to run the flutter_launcher_icons follow the steps given below 

### Step-1 

Add Flutter Launcher Icons to your **pubspec.yaml**

### Step-2

Create a new file named **flutter_launcher_icons.yaml** and add the following - 

```bash
dev_dependencies:
  flutter_launcher_icons: "^0.10.0"

flutter_icons:
  android: "launcher_icon"
  ios: true
  image_path: "assets/icon/icon.png"
  min_sdk_android: 21 # android min sdk min:16, default 21
  web:
    generate: true
    image_path: "path/to/image.png"
    background_color: "#hexcode"
    theme_color: "#hexcode"
  windows:
    generate: true
    image_path: "path/to/image.png"
    icon_size: 48 # min:48, max:256, default: 48
```

change **true** to **false** in ios , web , windows if you are not going to run the application on the mentioned devices

### Step-3

Run the following commands 

```bash
flutter pub get
```

```bash
flutter pub run flutter_launcher_icons:main
```
## Firebase integration 

To integrate Firebase backend to your application, create a Firebase project and add android app in it 

Go to the **AndroidManifest.xml** in the **android\app\src\main** and copy that package name written as 

```bash
    package="com.example.application_name"
```

then download the **google-services.json** file and place it in the **android\app**

add the dependencies as mentioned in the firebase instruction set and you are good to go

## UI of the application

<img src="https://user-images.githubusercontent.com/95862685/187660302-c7099c50-176e-4e7c-b61a-2f8125702a33.jpeg" width="200" height="400"> <img src="https://user-images.githubusercontent.com/95862685/187660603-4f25bcb9-0812-47ba-8b37-ccb492749021.jpg" width="200" height="400"> 

