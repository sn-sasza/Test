//
//  LoginViewController.swift
//  HomeWork_2
//
//  Created by Sasza Niehaj on 12/17/19.
//  Copyright © 2019 Sasza Niehaj. All rights reserved.
//

import UIKit

//MARK: - LoginViewController
class LoginViewController: UIViewController, UITextFieldDelegate {

    //MARK: - outlets
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var helpButton: UIButton!
    
    //MARK: - lifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailTextField.delegate = self
        passwordTextField.delegate = self
    }
    
    //MARK: - actions
    @IBAction func forgetPasswordButtonPressed(_ sender: Any) {
        hideKeyboard()
        // to add implementation
    }
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        hideKeyboard()
        // to add implementation
    }
    
    
    @IBAction func helpButtonPressed(_ sender: Any) {
        print("helpButtonPressed")
        // to add implementation
    }
    
    //MARK: - overridedProtocolMetgods
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == emailTextField {
            passwordTextField.becomeFirstResponder()
        } else if textField == passwordTextField {
            hideKeyboard()
        }
        return true
    }
}
