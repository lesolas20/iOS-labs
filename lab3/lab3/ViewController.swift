import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func switchToggled(_ sender: UISwitch) {
        var state: String
        if sender.isOn {
            state="ON"
        } else {
            state="OFF"
        }
        print("Switch got toggled \(state)")
    }
    
}
