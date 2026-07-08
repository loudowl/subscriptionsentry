# Product Requirements Document (PRD)

## SubscriptionSentry

### Executive Summary
SubscriptionSentry is an iOS application designed to help users efficiently track their AI tool subscriptions by photographing receipts and credit card statements. Utilizing on-device OCR through Apple's Vision Framework, the app identifies and categorizes AI subscriptions, calculates ROI, and alerts users about redundant services. This tool is specifically aimed at knowledge workers overwhelmed by the proliferation of AI tools like ChatGPT, Claude, and Midjourney.

### Goals & Success Metrics
- **Goal**: Provide users with visibility into their AI subscription expenses and help them optimize their spending.
- **Success Metrics**:
  - Achieve 5,000 downloads within the first month post-launch.
  - 70% of users perform at least one scan in their first week.
  - 50% conversion from free scans to premium purchase.
  - User satisfaction rating of 4.5/5 within the first three months.

### User Personas
1. **Tech-Savvy Knowledge Worker**: 
   - Age: 25-45
   - Needs: Efficiently manage multiple AI tool subscriptions, optimize expenses.
   - Motivation: Reduce redundant costs and maximize ROI on AI tools.
2. **Freelance Digital Artist**:
   - Age: 20-35
   - Needs: Track spending on AI design tools, manage limited budget.
   - Motivation: Ensure they are using the most cost-effective tools.

### Core Features
- **P0** (Must-have)
  - **OCR Receipt Scanning**: Capture and process images of receipts and statements to extract text.
  - **AI Subscription Categorization**: Identify and categorize AI tool subscriptions from extracted text.
  - **Local Data Storage**: Store subscription data using Core Data for offline access.
  - **Redundancy Alerts**: Notify users of duplicate or similar AI tools subscriptions.
- **P1** (Should-have)
  - **Expense Dashboard**: Visualize monthly spending trends and categorize expenses.
  - **ROI Calculator**: Estimate return on investment based on usage frequency.
- **P2** (Nice-to-have)
  - **User Tips**: Provide insights on optimizing tool usage and cost.

### User Stories
1. **As a tech-savvy knowledge worker**, I want to photograph my credit card statement, so that I can quickly identify and categorize my AI tool subscriptions.
2. **As a freelance digital artist**, I want to see alerts for redundant tools, so that I can avoid unnecessary expenses.
3. **As a user**, I want to view a dashboard of my monthly AI subscription spending, so that I can understand my expenses better.
4. **As a user**, I want an ROI calculator for my subscriptions, so that I can assess the value I get from each tool.

### Out of Scope
- Integration with third-party APIs or cloud services.
- Android version of the app.
- Multi-language support.
- Backend server or cloud-based data storage.

### Technical Constraints
- Must utilize SwiftUI for UI development.
- Must use Vision Framework for on-device OCR processing.
- No backend services; all data must be stored locally using Core Data.
- Must be compatible with iOS 15 and above.

### Timeline Estimate
- **Week 1**: 
  - Design finalization and setup of the SwiftUI project structure.
  - Implementation of OCR scanning using the Vision Framework.
- **Week 2**: 
  - Development of categorization logic and local storage with Core Data.
  - Creation of the expense dashboard and redundancy alert system.
  - Testing and refinement of the ROI calculator.
- **End of Week 2**: 
  - User interface polishing, final testing, and preparation for app store submission.

This PRD outlines a clear path for developing SubscriptionSentry, focusing on immediate utility for users and a rapid time-to-market.