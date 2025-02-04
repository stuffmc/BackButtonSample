import SwiftUI

struct ContentView: View {
    @State private var showingCancelAlert = false
    @Environment(\.dismiss) var dismiss

    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 20) {
                NavigationLink("Button with Text and systemImage") {
                    DetailView(version: 1)
                }
                NavigationLink("Button with Label with Style") {
                    DetailView(version: 2)
                }
                Text("Both with a labelStyle")
                    .padding()
                NavigationLink("Hstack, only way to make it work 🥺") {
                    DetailView(version: 3)
                }
                .bold()
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
