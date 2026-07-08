# SubscriptionSentry Architecture Document

## 1. Tech Stack

### Frontend
- **Framework**: SwiftUI (version 3.0)
- **OCR**: Vision Framework (part of iOS SDK)
- **Local Storage**: Core Data

### Backend
- **None**: All functionalities are handled on-device.

### Database
- **Core Data**: Local storage for user data and subscription information.

### Hosting
- **None**: As the app is fully on-device and does not require a backend.

### Target Platform
- **iOS**: Minimum iOS version 14.0

## 2. Project Structure

```
SubscriptionSentry/
│
├── SubscriptionSentryApp.swift
├── ContentView.swift
├── Models/
│   ├── Subscription.swift
│   ├── Receipt.swift
│   └── UserSettings.swift
│
├── Views/
│   ├── DashboardView.swift
│   ├── ScanView.swift
│   ├── SettingsView.swift
│   └── AlertsView.swift
│
├── ViewModels/
│   ├── DashboardViewModel.swift
│   ├── ScanViewModel.swift
│   ├── SettingsViewModel.swift
│   └── AlertsViewModel.swift
│
├── Resources/
│   ├── Assets.xcassets
│   ├── Localizable.strings
│   └── Fonts/
│
├── CoreData/
│   ├── SubscriptionSentry.xcdatamodeld/
│   └── CoreDataStack.swift
│
├── Utils/
│   ├── OCRProcessor.swift
│   ├── SubscriptionCategorizer.swift
│   └── ROIAnalyzer.swift
│
└── Tests/
    ├── SubscriptionSentryTests/
    └── SubscriptionSentryUITests/
```

## 3. API Design

Since there is no backend, the API design focuses on internal methods and services used within the app:

- **OCR Processing**
  - **Method**: `processImage(image: UIImage) -> [String]`
  - **Description**: Extracts text from the provided image using Vision Framework.

- **Subscription Categorization**
  - **Method**: `categorizeSubscriptions(texts: [String]) -> [Subscription]`
  - **Description**: Identifies and categorizes AI subscriptions from OCR text output.

- **Redundancy Alert**
  - **Method**: `checkForRedundancy(subscriptions: [Subscription]) -> [Alert]`
  - **Description**: Checks for redundant subscriptions and generates alerts.

## 4. Data Models

### Core Data Models

#### Subscription
- **Attributes**:
  - `id`: UUID
  - `name`: String
  - `amount`: Double
  - `date`: Date
  - `category`: String

#### Receipt
- **Attributes**:
  - `id`: UUID
  - `imageData`: Data
  - `processedText`: String
  - `date`: Date

#### UserSettings
- **Attributes**:
  - `id`: UUID
  - `premiumPurchased`: Bool
  - `freeScansRemaining`: Int

## 5. Authentication

- **Approach**: No authentication required as the app is fully on-device.

## 6. State Management

- **Approach**: SwiftUI state management using `@State`, `@StateObject`, and `@EnvironmentObject` for managing UI states and data flow across views.

## 7. Key Dependencies

- **Vision Framework**: For OCR capabilities.
- **Core Data**: For local data persistence.
- **SwiftUI**: For building the app UI.
- **Combine**: For reactive programming and data binding.

## 8. Deployment

### Recommended Hosting
- **None**: The app is deployed via the Apple App Store.

### CI/CD Approach
- **Continuous Integration**: Use GitHub Actions or Bitrise for automating builds and running tests.
- **Continuous Deployment**: Automate the deployment to TestFlight for beta testing before App Store release.

This architecture leverages the capabilities of on-device processing and local storage to deliver a performant and privacy-focused application without the need for backend services.