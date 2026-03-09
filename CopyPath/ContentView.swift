import SwiftUI

struct ContentView: View {
    @State private var extensionEnabled = false

    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "doc.on.clipboard")
                .font(.system(size: 64))
                .foregroundColor(.accentColor)

            Text("CopyPath")
                .font(.largeTitle)
                .fontWeight(.bold)

            Text("Right-click any file or folder in Finder to copy its path.")
                .font(.body)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)

            Divider()

            VStack(alignment: .leading, spacing: 12) {
                Text("Setup Instructions")
                    .font(.headline)

                Label("Open System Settings", systemImage: "1.circle.fill")
                Label("Go to Privacy & Security → Extensions → Added Extensions", systemImage: "2.circle.fill")
                Label("Enable CopyPath under Finder extensions", systemImage: "3.circle.fill")
                Label("Right-click any file in Finder to see \"Copy Path\"", systemImage: "4.circle.fill")
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 10).fill(Color.gray.opacity(0.1)))
        }
        .padding(40)
        .frame(width: 450, height: 400)
    }
}
