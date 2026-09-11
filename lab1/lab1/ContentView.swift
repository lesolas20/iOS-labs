import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "star")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("HELLO")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
