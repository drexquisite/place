# placeApp

An application built for both iOS and Android. Think AirBnB but for landlords and tenants. 

## Getting Started

Download as ZIP or clone repo. 

### IMPORTANT:

For projects with Firestore integration, you must first run the following commands to ensure the project compiles:

```
flutter pub get
flutter packages pub run build_runner build --delete-conflicting-outputs
```

This command creates the generated files that parse each Record from Firestore into a schema object.

### Getting started continued:
The project has Google's Firebase for backend which authenticates and allows users to login.
The purpose of the app is to allow landlords and tenants to activelty find vacant homes (for the tenants) and tenants (for the landlords)
Think airbnb with many postings of properties. Both users will be able to rate each other. Of course the ratings will be administered. 
