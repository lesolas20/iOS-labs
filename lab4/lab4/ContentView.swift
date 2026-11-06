import SwiftUI

enum Device: String, CaseIterable, Identifiable {
  case steamDeck = "Steam deck"
  case steamController = "Steam controller"
  case steamMachine = "Steam machine"
  case steamFrame = "Steam frame"
  case steamLink = "Steam link"

  var id: Self { self }
}

struct UserForm {
  let email: String
  let sendEmails: Bool
  let device: Device
}

struct FormControlsView: View {
  @State private var sendEmails = false
    @State private var email = ""
  @State private var device: Device = .steamDeck

  var body: some View {
    VStack(spacing: 16) {
      HStack {
        Toggle("Send emails", isOn: $sendEmails)
          .labelsHidden()
        TextField("Your email address", text: $email)
          .textFieldStyle(.roundedBorder)
      }

      Picker("Select device", selection: $device) {
        ForEach(Device.allCases) { device in
          Text(device.rawValue).tag(device)
        }
      }
      .pickerStyle(.menu)

      Button("Submit") {
        let form = UserForm(email: email, sendEmails: sendEmails, device: device)
        print(
          "Email: \(form.email), send emails: \(form.sendEmails), device: \(form.device.rawValue)")
      }
      .buttonStyle(.borderedProminent)
    }
  }
}

struct ContentView: View {
  var body: some View {
    GeometryReader { geo in
      let isWide = geo.size.width > geo.size.height

        if isWide {
            HStack {
                Image("steam-hardware")
                  .resizable()
                  .scaledToFit()
                FormControlsView()
            }
            .padding()
        } else {
          VStack {
            Image("steam-hardware")
              .resizable()
              .scaledToFit()
              Image(systemName: "star")
                  .padding()
            FormControlsView()
        }
          .padding()
      }
    }
  }
}

#Preview {
  ContentView()
}
