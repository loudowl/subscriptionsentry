import SwiftUI

struct DashboardView: View {
    @FetchRequest(
        entity: Subscription.entity(),
        sortDescriptors: [NSSortDescriptor(keyPath: \Subscription.lastUsed, ascending: false)]
    ) var subscriptions: FetchedResults<Subscription>

    var body: some View {
        NavigationView {
            List {
                ForEach(subscriptions, id: \.self) { subscription in
                    HStack {
                        Text(subscription.name)
                        Spacer()
                        Text("$\(subscription.monthlyCost, specifier: "%.2f")")
                    }
                }
            }
            .navigationTitle("Dashboard")
        }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
