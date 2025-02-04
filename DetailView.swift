import SwiftUI

struct DetailView: View {
    @Environment(\.dismiss) var dismiss
    var version: Int

    var body: some View {
        Text("")
        .navigationBarBackButtonHidden(version < 4)
        .toolbar {
            ToolbarItem(placement: .cancellationAction) {
                switch version {
                case 1:
                    Button("Foo", systemImage: "chevron.backward") { dismiss() }
                        .labelStyle(.titleAndIcon)
                case 2:
                    Button(role: .cancel) { dismiss() } label: {
                        Label("Foo", systemImage: "chevron.backward")
                            .labelStyle(.titleAndIcon)
                    }
                case 3:
                    Button(role: .cancel) { dismiss() } label: {
                        HStack {
                            Image(systemName: "chevron.backward")
                            Text("Foo")
                        }
                    }
                default: Text("Wrong version")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
