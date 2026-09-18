class UserForm {
  let name: String
  let device: String
  let sendEmails: Bool

  init(name: String, device: String, sendEmails: Bool) {
    self.name = name
    self.device = device
    self.sendEmails = sendEmails
  }

}
