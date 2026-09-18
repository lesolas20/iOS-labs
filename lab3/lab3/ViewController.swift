import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

  @IBOutlet weak var userNameInput: UITextField!
  @IBOutlet weak var sendEmailsSwitch: UISwitch!
  @IBOutlet weak var devicePicker: UIPickerView!

  var pickerData: [String] = []

  override func viewDidLoad() {
    super.viewDidLoad()

    pickerData = ["Steam deck", "Steam controller", "Steam machine", "Steam frame", "Steam link"]

    self.devicePicker.delegate = self
    self.devicePicker.dataSource = self
  }

  func numberOfComponents(in pickerView: UIPickerView) -> Int {
    return 1
  }

  func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    return pickerData.count
  }

  func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int)
    -> String?
  {
    return pickerData[row]
  }

  @IBAction func sendForm(_ sender: Any) {
    let form: UserForm = UserForm(
      name: userNameInput.text ?? "", device: pickerData[devicePicker.selectedRow(inComponent: 0)],
      sendEmails: sendEmailsSwitch.isOn)

    print("user name: \(form.name), send emails: \(form.sendEmails), device: \(form.device)")
  }
}
