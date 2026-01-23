@echo off

rem Install backend
mvn install

rem Install frontend
npm install

rem Instructions for Android and iOS setup
echo To set up Android, ensure you have Android Studio installed and configure the SDK path in your environment variables.
echo To set up iOS, ensure you have Xcode installed and set the necessary permissions for development.