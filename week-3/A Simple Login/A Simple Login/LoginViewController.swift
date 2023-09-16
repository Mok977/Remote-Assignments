/*
 Please implement the UI design below in a new app. This is a simple log-in and sign-up
 page.
 - Only consider iPhone 14 Pro screen size when implementing this app.
 - Here’re the UI requirements (measured in point.)
 - AppWorks School label : top 80 to status bar, horizontally center in super
 view. Font size 40.0
 - Segmented Control : top 70 to AppWorks label, width 150, horizontally
 center in super view.
 - Gray View : width 255, height 125, top 40 to segmented control, horizontally
 center in super view.
 - Button : width 235, height: 30, top 50 to gray view, horizontally center in
 super view.
 
 Functional requirements:
 - When users switch to the login page through segmented control, the check
 label and its text field should be disabled and their colors should be updated.
 - When users touch the button, the app should execute log-in or sign-up flow,
 depending which segment is selected.
 - If there is no valid text, including empty input or wrong input, you should show
 a corresponding alert to users.
 -In the log in scenario, for now only the info below is acceptable.
 Account: appworks_school / Password: 1234
 -In the sign up scenario, the account is always valid except for empty input.
 The password text must be equal to the check text, otherwise it’s invalid.
 */


import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var check: UILabel!
    @IBOutlet var checkText: UITextField!
    @IBOutlet var submitButton: UIButton!
    @IBOutlet var accountText: UITextField!
    @IBOutlet var passwordText: UITextField!
    @IBOutlet var segmented: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // segmented 轉換
    @IBAction func segmentedValueChanged(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            checkText.isEnabled = false
            checkText.text = ""
            updateTextFieldColors()
        } else {
            checkText.isEnabled = true
            updateTextFieldColors()
        }
    }
    
    // submit 按鈕
    @IBAction func submitButtonTapped(_ sender: UIButton) {
        let selectedSegmentIndex = segmented.selectedSegmentIndex
        // 0 = login
        if selectedSegmentIndex == 0 {
            // 輸入
            let account = accountText.text ?? ""
            let password = passwordText.text ?? ""
            // if 輸入的帳號appworks_school 且 密碼1234 = Login successful
            if account == "appworks_school" && password == "1234" {
                showMessage("Login successful")
            } else if account.isEmpty {
                showError("Account should not be empty")
                // password != check
            } else if password.isEmpty {
                showError("password should not be empty")
            }
            else {
                showError("Login failed")
            }
        } else {
            // else = sign up
            // 輸入
            let account = accountText.text ?? ""
            let password = passwordText.text ?? ""
            let check = checkText.text ?? ""
            // account 如果是 isEmpty
            if account.isEmpty {
                showError("Account should not be empty")
            }else if password.isEmpty {
                showError("password should not be empty")
            }
            // password != check
            else if password != check {
                showError("Signup failed")
            } else {
                showMessage("Signup successful")
            }
        }
    }
    // 設定跳出訊息樣式
    func showMessage(_ message: String) {
        let alert = UIAlertController(title: "Message", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    // 設定跳出訊息樣式
    func showError(_ error: String) {
        let alert = UIAlertController(title: "Error", message: error, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    // segmented 轉換時 checkText 轉換顏色
    func updateTextFieldColors() {
        check.textColor = checkText.isEnabled ? .black : .gray
        checkText.backgroundColor = checkText.isEnabled ? .white : .gray
    }
}


