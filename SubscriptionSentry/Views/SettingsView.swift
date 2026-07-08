import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var userSettings: UserSettings

    var body: some View {
        Form {
            Section(header: Text("Account")) {
                Text("Scans Remaining: \(userSettings.scansRemaining)")
            }
            Section(header: Text("About")) {
                Text("SubscriptionSentry v1.0")
                Text("Developed by YourName")
            }
        }
        .navigationTitle("Settings")
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .environmentObject(UserSettings())
    }
}
