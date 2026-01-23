#!/bin/bash

# Sample Deployment Script for Friska

## Deploying Backend

1. Navigate to the backend directory:
   ```bash
   cd backend
   ```
2. Install dependencies:
   ```bash
   npm install
   ```
3. Run migrations:
   ```bash
   npm run migrate
   ```
4. Start the backend service:
   ```bash
   npm start
   ```

## Deploying Frontend

1. Navigate to the frontend directory:
   ```bash
   cd frontend
   ```
2. Install dependencies:
   ```bash
   npm install
   ```
3. Build the frontend application:
   ```bash
   npm run build
   ```
4. Serve the built frontend:
   ```bash
   npx serve -s build
   ```

## Deploying Android

1. Navigate to the android directory:
   ```bash
   cd android
   ```
2. Build the APK:
   ```bash
   ./gradlew assembleRelease
   ```
3. Install the APK on a connected device:
   ```bash
   adb install -r app/build/outputs/apk/release/app-release.apk
   ```

## Deploying iOS

1. Navigate to the ios directory:
   ```bash
   cd ios
   ```
2. Install CocoaPods dependencies:
   ```bash
   pod install
   ```
3. Build the iOS app:
   ```bash
   xcodebuild -scheme YourAppScheme -sdk iphoneos -configuration Release
   ```
4. Run on an emulator or device:
   ```bash
   xcrun simctl install booted path/to/YourApp.app
   ```

echo "Deployment completed successfully!"