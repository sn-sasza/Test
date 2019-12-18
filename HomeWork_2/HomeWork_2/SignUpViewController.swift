//
//  SignUpViewController.swift
//  HomeWork_2
//
//  Created by Sasza Niehaj on 12/17/19.
//  Copyright © 2019 Sasza Niehaj. All rights reserved.
//

import UIKit

//MARK: - SignUpViewController
class SignUpViewController: UIViewController {
    
    //MARK: - outlets
    @IBOutlet weak var buyerCharacteristicSwitch: UISwitch!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var helpButton: UIButton!
    @IBOutlet weak var userAgreementButton: UIButton!
    
    
    //MARK: - instanceTypes
    enum Buyer: Int {
        case privatePerson = 0
        case privateEntrepreneurOrCompany = 1
    }
    
    //MARK: - properies
    var buyer: Buyer!
    
    //MARK: - lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        emailTextField.delegate = self
        passwordTextField.delegate = self
    }
    
    //MARK: - actions
    @IBAction func buyerCharacteristicSwitchSelected(_ sender: Any) {
        if buyerCharacteristicSwitch.isOn { buyer = .privateEntrepreneurOrCompany }
        else { buyer = .privatePerson }
    }
    
    
    @IBAction func signUpButtonPressed(_ sender: Any) {
        print("signUpButtonPressed")
    }
    
    @IBAction func helpButtonPressed(_ sender: Any) {
        print("helpButtonPressed")
    }
    
    @IBAction func userAgreementButtonPressed(_ sender: Any) {
        print("userAgreementButtonPressed")
    }
    
}
