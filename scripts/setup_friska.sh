#!/bin/bash
# This script sets up the Friska project

# Set up backend
mvn clean install

# Set up frontend
npm install

# Instructions for running Android and iOS projects:
# For Android:
# 1. Open the project in Android Studio.
# 2. Ensure that the Android SDK is installed and that the project compiles successfully.
# 3. Run the project on an emulator or physical device.

# For iOS:
# 1. Open the project in Xcode.
# 2. Ensure that the necessary iOS dependencies are installed.
# 3. Run the project on a simulator or physical device.