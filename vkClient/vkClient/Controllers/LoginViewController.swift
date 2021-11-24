//
//  LoginViewController.swift
//  vkClient
//
//  Created by Сергей Буланов on 13.11.2021.
//

import UIKit

class LoginViewController: UIViewController {


    
    
    @IBOutlet weak var loginTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var scrollView: UIScrollView!
    
    
    
    
    let toOrangeSegue = "fromLoginToOrange"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        NotificationCenter.default.addObserver(self, selector: #selector(onPressed(_:)), name: Notification.Name("pressLoginButton"), object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardDidShow(_:)), name: UIResponder.keyboardDidShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardDidHide(_:)), name: UIResponder.keyboardDidHideNotification, object: nil)
    
    let recognizer = UITapGestureRecognizer(target: self, action: #selector(onTap(_:)))
        recognizer.cancelsTouchesInView = false
        self.view.addGestureRecognizer(recognizer)
    
    }
    
    @objc func onTap (_ recognizer: UITapGestureRecognizer) {
        self.view.endEditing(true)
        
    }
    
    
    @objc func onPressed(_ notification: Notification) {
        
        if let testString =   notification.object as? String {
            loginTextField.text = testString
        }
        
        
    }
    @objc func keyboardDidShow(_ notification: Notification) {
        
        let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue
        guard let keyboardHeight = keyboardSize?.height else {return}
        
        let contentInsets = UIEdgeInsets(top: 0, left: 0, bottom: keyboardHeight + 100, right: 0)
        scrollView.contentInset = contentInsets
        scrollView.scrollIndicatorInsets = contentInsets
        
    }
    
    @objc func keyboardDidHide(_ notification: Notification) {
        
        
        let contentInsets = UIEdgeInsets.zero
        scrollView.contentInset = contentInsets
        scrollView.scrollIndicatorInsets = contentInsets
        
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }

    @IBAction func pressLoginButton(_ sender: Any) {
        
        
        
//        let testString = "root"
//
//
//        NotificationCenter.default.post(name: Notification.Name("pressLoginButton"), object: testString)
        
        //Notification.Name(Constants.shared.updateFavoritesNotification)
        /*
        guard let login = loginTextField.text, let password = passwordTextField.text
                
        else {return}
        
        if login.isEmpty || password.isEmpty {
            loginTextField.backgroundColor = UIColor.gray
            passwordTextField.backgroundColor = UIColor.gray
            return
        }
        
        if login == "root" && password == "1234" {
        
        
        performSegue(withIdentifier: toOrangeSegue, sender:     nil)
        
        }
        */
        
    }
    
}
