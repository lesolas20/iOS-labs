import SwiftUI

struct ContentView: View {
    @Environment(\.horizontalSizeClass) private var hSize
    @Environment(\.verticalSizeClass) private var vSize
    
    var body: some View {
        VStack {
            Text("hSize: \(hSize)" as String)
            Text("vSize: \(vSize)" as String)
        }
    }
}

#Preview {
    ContentView()
}
